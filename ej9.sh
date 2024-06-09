#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Eror en la cantidad de parámetros"
	echo "Uso: ej9.sh <directorio>"
	exit 1
elif [ ! -d $1 ]
then
	echo "Eror: $1 debe ser un directorio"
	exit 2
else
	nombre="$1 `date '+%Y-%m-%d'`.tar.gz"
	dir=$1
	if [ -e "$nombre" ]
	then
		echo "El archivo destino ($nombre) existe"
		exit 3
	fi
fi
tar -cvzf "$nombre" "$dir"
