echo "Generating lowres pages:"
for f in ../originais/*.jpg
do
    echo "Converting $f ..."
    convert $f -resize 1000 $f.lowres.jpg
done

echo "And now generating the lowres PDF..."
convert ../originais/*.lowres.jpg Sistema_de_Programacao_Cross-Montador_para_um_Minicomputador__MariaAliceFerreira__1974.pdf
rm ../originais/*.lowres.jpg -f

echo "done."
