#!/bin/bash

for arch in $1/*
do
	if [ -d "$arch" ]
	then	
		echo "Directorio: $arch"
 	elif [ -f "$arch" ]
 	then
 		echo "Archivo: $arch"
 	else
 		echo "no se que es $arch"
	fi
done 

