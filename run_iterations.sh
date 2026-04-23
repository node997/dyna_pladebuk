#!/bin/bash

LSDYNA="/home/jakob/dyna/lsprepost4.12_common/local/dyna_d_wrapper.sh"
LSPP="/home/jakob/dyna/lsprepost4.12_common/lspp412"
BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
ITERATIONS=2
NCPU=8

echo "Kører fra: $BASE_DIR"
echo ""

# Tjek at nødvendige filer findes
for f in geometry.k main.k boundary.k MAT_CWM.k; do
    if [ ! -f "$BASE_DIR/$f" ]; then
        echo "  ✗ Mangler $f – stopper"
        exit 1
    fi
done
echo "  ✓ Alle filer fundet"
echo ""

for i in $(seq 1 $ITERATIONS); do
    ITER_DIR="$BASE_DIR/iter_$(printf '%02d' $i)"
    mkdir -p "$ITER_DIR"

    echo "============================="
    echo "  ITERATION $i/$ITERATIONS"
    echo "============================="

    # Første iteration bruger original geometry.k, efterfølgende bruger forrige deform_geo.k
    if [ $i -eq 1 ]; then
        cp "$BASE_DIR/geometry.k" "$ITER_DIR/geometry.k"
    else
        PREV_DIR="$BASE_DIR/iter_$(printf '%02d' $((i-1)))"
        cp "$PREV_DIR/deform_geo.k" "$ITER_DIR/geometry.k"
    fi

    # Kopiér øvrige filer
    cp "$BASE_DIR/main.k"     "$ITER_DIR/"
    cp "$BASE_DIR/boundary.k" "$ITER_DIR/"
    cp "$BASE_DIR/MAT_CWM.k"  "$ITER_DIR/"

    # Kør LS-DYNA
    cd "$ITER_DIR"
    echo "  Kører LS-DYNA..."
    "$LSDYNA" i=main.k ncpu=$NCPU memory=20M

    if [ $? -ne 0 ]; then
        echo "  ✗ LS-DYNA fejlede – stopper"
        exit 1
    fi

    echo "  ✓ LS-DYNA færdig – eksporterer geometri..."

    # Eksportér deformeret geometri
    cat > "$ITER_DIR/export.cfile" << CEOF
bgstyle fade
open d3plot "$ITER_DIR/d3plot"
ac
output append 1
output "$ITER_DIR/deform_geo.k" 241 1 0 1 1 1 0 0 0 0 0 0 0 0 0 1.000000 0 0
quit
CEOF

    "$LSPP" -nographics c="$ITER_DIR/export.cfile"

    if [ ! -f "$ITER_DIR/deform_geo.k" ]; then
        echo "  ✗ Eksport fejlede – stopper"
        exit 1
    fi

    STATE=$(grep "STATE_NO" "$ITER_DIR/deform_geo.k" | head -1)
    echo "  ✓ Eksporteret: $STATE"
    echo "  ✓ Iteration $i færdig"
    echo ""
done

echo "============================="
echo "  ALLE $ITERATIONS ITERATIONER FÆRDIGE!"
echo "============================="
