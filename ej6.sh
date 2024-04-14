#!/bin/bash
#Usamos el let para aclarar que estamos haciendo una operacion matematica
let suma=$1+$2
let resta=$1-$2
let mult=$1*$2
let div=$1/$2
let resto=$1%$2

echo "La suma es $suma"
echo "La resta es $resta"
echo "El producto es $mult"
echo "La división es $div"
echo "El módulo es $resto"
