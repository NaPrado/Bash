#!/bin/bash


if [ $# -ne 1 ]
then
	echo "Error en la cantidad de argumentos"
	echo "Uso: ./ej17.sh <num>"
	exit 2
fi

echo $1 | egrep '^[0-9]$' &> /dev/null

if [ $? -ne 0 ]
then
	echo "Argumento debe ser un número de un digito"
	exit 1
fi

for multiplo in `seq 0 9`
do
	let resp=$multiplo*$1
	echo "$1 * $multiplo = $resp"
done

