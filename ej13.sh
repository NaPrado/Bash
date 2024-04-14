#!/bin/bash

if [ -e "$1" ]
then
	if [ -d "./$1" ]
	then
		echo "$1 es un directorio del CWD"
	else
		echo "$1 es un archivo del CWD"
	fi
else
	echo "$1 no pertenece al CWD"
fi
