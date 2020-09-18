#!/bin/bash

#va escalando la foto jpg primero a la mitad de su tamanio, pero con el doble del tamnio de file pedidp y luego
# baja de a muy poquito para llegar al objetivo.. lo repetis muchas veces y te escala todo el directorio en un toque
#anda mejor que agarrar una imagen grande y usar optim o cambiar el tipo de compresion..en cierto margen no
T=$1
let "T = $T*2"
for i in 1..10;
do
 find . -type f -iname "*.jpg" -size +"$T"k -print0 | xargs -0 -I{123} convert -verbose {123} -scale 50% {123}
 find . -type f -iname "*.png" -size +"$T"k -print0 | xargs -0 -I{123} convert -verbose {123} -scale 50% {123}
done;

for i in 1..10;
do
 find . -type f -iname "*.jpg" -size +"$1"k -print0 | xargs -0 -I{123} convert -verbose {123} -scale 97% {123}
 find . -type f -iname "*.png" -size +"$1"k -print0 | xargs -0 -I{123} convert -verbose {123} -scale 97% {123}
done;

