#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Error debe pasar un número como argumento."
	exit 2
fi

echo $1 | egrep '^[0-9]+' &> /dev/null
if [ $? -ne 0 ]
then
	echo "El argumento no es un número"
	exit 3
fi

let resto=$1%2

if [ $resto -eq 0 ]
then
	echo "$1 es par"
else
	echo "$1 es impar"
fi
