#!/bin/bash

if [ $# -lt 1 ]
then
	echo "Cantidad de argumentos incorrecta"
	exit 2
fi

let cant=$#-1

if [ "$1" = "$cant" ]
then
	echo "Cantidad de argumentos correcta"
else
	echo "Cantidad de argumentos incorrecta"
fi
