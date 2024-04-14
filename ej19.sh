#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Error cantidad incorrecta de argumentos"
	echo "Uso ej19.sh <User>"
	exit 2
fi

who | egrep "^$1\>" &> /dev/null

until [ $? -eq 0 ]
do
	sleep 1
	who | egrep "^$1\>" &> /dev/null
done

echo "$1 tiene una sesion abierta en el sistema"
