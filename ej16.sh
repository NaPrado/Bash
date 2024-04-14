#!/bin/bash


if [ $# -ne 1 ]
then
	echo "Eror en la cantidad de argumentos"
	echo "uso: ej16.sh <directorio>"
	exit 3
fi

cant_dir=0
cant_arch=0
for arch in $1/*
do
	if [ -d "$arch" ]
	then
		let cant_dir=$cant_dir+1
	elif [ -f "arch" ]
	then
		let cant_arch=$cant_arch+1
	else
		echo "no se que es $arch"
		exit 5
	fi
done

echo "hay $cant_dir directorios"
echo "hay $cant_arch archivos"
