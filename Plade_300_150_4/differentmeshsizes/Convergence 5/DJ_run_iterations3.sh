#!/bin/bash
LSDYNA="/home/ubuntu/local/dyna_d_wrapper.sh"
LSPP="/home/ubuntu/dyna/lsprepost4.12_common/lspp412_mesa"
export LD_LIBRARY_PATH=/home/ubuntu/dyna/lsprepost4.12_common/lsppLibs:$LD_LIBRARY_PATH
BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
ITERATIONS=1
NCPU=8

echo "Kører fra: $BASE_DIR"
echo ""

for f in boundary+geo.k main.k MAT_CWM355.k; do
    if [ ! -f "$BASE_DIR/$f" ]; then
        echo "  ERROR: Mangler $f – stopper"
        exit 1
    fi
done
echo "  GREAT SUCCES: Alle filer fundet"
echo ""

for i in $(seq 1 $ITERATIONS); do
    ITER_DIR="$BASE_DIR/iter_$(printf '%02d' $i)"
    mkdir -p "$ITER_DIR"
    echo "  ITERATION $i/$ITERATIONS"

    if [ $i -eq 1 ]; then
        cp "$BASE_DIR/boundary+geo.k" "$ITER_DIR/boundary+geo.k"
    else
        PREV_DIR="$BASE_DIR/iter_$(printf '%02d' $((i-1)))"
        cp "$PREV_DIR/deform_geo.k" "$ITER_DIR/boundary+geo.k"
    fi

    cp "$BASE_DIR/main.k"       "$ITER_DIR/"
    cp "$BASE_DIR/MAT_CWM355.k" "$ITER_DIR/"

    cd "$ITER_DIR"
    echo "  Kører LS-DYNA..."
    "$LSDYNA" i=main.k ncpu=$NCPU
    if [ $? -ne 0 ]; then
        echo "  ERROR: LS-DYNA fejlede – stopper"
        exit 1
    fi
    echo "  GREAT SUCCES: LS-DYNA færdig – eksporterer geometri..."

    # Start Xvfb til eksport
    Xvfb :99 -screen 0 1024x768x24 &
    XVFB_PID=$!
    export DISPLAY=:99
    sleep 1

    cat > "$ITER_DIR/export.cfile" << CEOF
open d3plot "$ITER_DIR/d3plot"
ac
output append 1
output "$ITER_DIR/deform_geo.k" 241 1 1 1 1 1 0 0 0 0 0 0 0 0 0 1.000000 0 0
quit
CEOF

    "$LSPP" -nographics c="$ITER_DIR/export.cfile"

    # Stop Xvfb igen
    kill $XVFB_PID 2>/dev/null
    wait $XVFB_PID 2>/dev/null

    if [ ! -f "$ITER_DIR/deform_geo.k" ]; then
        echo "  ERROR: Eksport fejlede – stopper"
        exit 1
    fi

    STATE=$(grep "STATE_NO" "$ITER_DIR/deform_geo.k" | head -1)
    echo "  GREAT SUCCES: Eksporteret: $STATE"
    echo "  GREAT SUCCES: Iteration $i færdig"
    echo ""
done

echo "  ALLE $ITERATIONS ITERATIONER FÆRDIGE!"
