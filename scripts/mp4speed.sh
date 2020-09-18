echo "mp42speed acelera o ralentiza el video tirando o no los frames. Primer parametro el archivo , segundo parametro cuanto se acelera  >1 acelera <1 ralentiza, y tercer parametro los frames rate de entrada y el 4 el tempo del audio"
read
rate=$(echo "1.0/$2" | bc -l)
if [ $4 -eq 0 ]
then
   ffmpeg -i $1 -r $3 -filter:v "setpts=$rate*PTS" -an speedup_$1
else
   ffmpeg -i $1 -r $3 -filter:v "setpts=$rate*PTS" -filter:a "atempo=$4" speedup_$1
fi
