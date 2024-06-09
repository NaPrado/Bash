#!/bin/bash
dir="$1"
nombre="$1 `date '+%Y-%m-%d'`.tar.gz"
if [ $# -ne 1 ]
then
	echo "Eror en la cantidad de parámetros"
	echo "Uso: ej9.sh <directorio>"
	exit 1
elif [ ! -d "$dir" ]
then
	echo "Eror: $1 debe ser un directorio"
	exit 2
elif [ -e "$nombre" ]
then
	echo "El archivo destino ($nombre) existe"
	exit 3
else
    tar -cvzf "$nombre" "$dir"
fi