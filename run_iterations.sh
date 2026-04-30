#!/bin/bash
# sti til ls dyna solver og ls prepost
LSDYNA="/home/jakob/dyna/lsprepost4.12_common/local/dyna_d_wrapper.sh"
LSPP="/home/jakob/dyna/lsprepost4.12_common/lspp412"
# stien hvor simuleringer skal gemmes og hvor filer er placeret
BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
# antal iterationer
ITERATIONS=2
# antal tråde simuleringen må spise
NCPU=8

echo "Kører fra: $BASE_DIR"
echo ""

# Tjek at nødvendige filer findes
for f in geometry.k main.k boundary.k MAT_CWM.k; do
    if [ ! -f "$BASE_DIR/$f" ]; then
        echo "  ERROR: Mangler $f – stopper"
        exit 1
    fi
done
echo "  GREAT SUCCES: Alle filer fundet"
echo ""
# opretter mappen til simulering
for i in $(seq 1 $ITERATIONS); do
    ITER_DIR="$BASE_DIR/iter_$(printf '%02d' $i)"
    mkdir -p "$ITER_DIR"

    echo "  ITERATION $i/$ITERATIONS"

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

    # Kør LS-DYNA ud fra main.k fil og med de ønskede antal kerner og med 200 mb ram
    cd "$ITER_DIR"
    echo "  Kører LS-DYNA..."
    "$LSDYNA" i=main.k ncpu=$NCPU memory=20M

    if [ $? -ne 0 ]; then
        echo "  ERROR: LS-DYNA fejlede – stopper"
        exit 1
    fi

    echo "  GREAT SUCCES: LS-DYNA færdig – eksporterer geometri..."

    # Eksportér deformeret geometri med kommandoer fra LS-prepost
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
        echo "  ERROR: Eksport fejlede – stopper"
        exit 1
    fi

    STATE=$(grep "STATE_NO" "$ITER_DIR/deform_geo.k" | head -1)
    echo "  GREAT SUCCES: Eksporteret: $STATE"
    echo "  GREAT SUCCES: Iteration $i færdig"
    echo ""
done

echo "  ALLE $ITERATIONS ITERATIONER FÆRDIGE!"
