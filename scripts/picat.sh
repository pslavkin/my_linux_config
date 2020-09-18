#!/bin/bash

DELAY=0.2
PICS=$1

if [ -z $1 ]
then
   PICS="*.jpg
   *.png
   *.jpeg"
fi

for filename in $PICS; do
        ls "$filename" 
        tycat -g 30x30 $filename
        sleep $DELAY
     done
