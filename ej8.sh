#!/bin/bash

if [ $# -ne 2 ]
then
	echo "Error en los argumentos"
	exit 2
fi

num1=$1
num2=$2


let suma=num1+num2
let resta=num1-num2
let mult=num1*num2
let div=num1/num2
let resto=num1%num2

echo "La suma es $suma"
echo "La resta es $resta"
echo "El producto es $mult"
echo "La división es $div"
echo "El módulo es $resto"
