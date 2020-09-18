a2ps  --columns 1 --landscape -f 16 $1 -o out.ps
ps2pdf out.ps
rm out.ps
mv out.pdf $1.pdf
evince $1.pdf
