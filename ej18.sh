#!/bin/bash

if [ $# -ne 1 ]
then 
	echo "Error, cantidad de argumentos incorrecta"
	echo "Uso: ej18.sh <USER>"
	exit 2
fi
who | egrep "^$1\>" &> /dev/null

if [ $? -eq 0 ]
then
	echo "$1 tine una sesion abierta en el sistema"
else
	echo "$1 no tiene una sesion abierta en el sistema"
fi
