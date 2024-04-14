#!/bin/bash

#Escriba un programa que muestre un saludo personalizado con uno de los siguientes texto según corresponda:

#	"Buenos días <nombre usuario>". (si se corre el programa antes del mediodía).

#	“Buenas tardes <nombre usuario>" (si se corre el programa entre el mediodía y las 20 horas).

#	“Buenas noches <nombre usuario>" (si se corre el programa después de las 20 horas). 

echo "Buenos días $USER"
echo "Buenas tardes $USER"
echo "Buenas noches $USER"