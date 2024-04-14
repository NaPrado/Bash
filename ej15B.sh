#!/bin/bash

for arch in `ls $1`
do
	if [ -d "$1/$arch" ]
	then
		echo "Directorio: $arch"
 	elif [ -f "$1/$arch" ]
 	then
 		echo "Archivo: $arch"
 	else
 		echo "no se que es $arch"
	fi
done

