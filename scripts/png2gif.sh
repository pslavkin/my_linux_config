echo "pics2animated_gif primer parametro el header de los pics en png , segundo parametro delay entre fotos y listo"
read
convert -delay $2 -loop 0 -alpha opaque $1*.png $1.gif
