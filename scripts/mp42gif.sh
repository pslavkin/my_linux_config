echo "mp42gif primer parametro el archivo, segundo parametro cuanto se agraanda >1 o achica <1 el ancho, y tercer parametro el rate"
read
ffmpeg -i $1.mp4 -vf scale=iw*$2:-1  -r $3 -an $1.gif -hide_banner
