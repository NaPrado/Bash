#!/bin/bash

echo -n "Ingrese el primer número: "
read num1
echo -n "Ingrese el segundo número: "
read num2


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
