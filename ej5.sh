#!/bin/bash 
hora=`date '+%H'`
#creo una variable "hora"
if [ $hora -lt 12 ] #Lower than
then
    echo "Buen dia $USER"
elif [ $hora -lt 20 ] #Lower than
then
    echo "Buenas tardes $USER"
else
    echo "Buenas noches $USER"
fi
