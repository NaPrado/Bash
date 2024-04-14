#!/bin/bash 
# Mi primer programa en bash
echo "Hola mundo" 
echo "La fecha de hoy es: `date`"
#notar que ` es una comilla francesa, un tilde al revéz
#la tide al revez se usa para usar la salida de este como parte de un string
#ejemplos:
#ls "`pwd`" 
#quiero imprimir el directorio en el que estoy, es más comodo ls solo, pero es para hacer un ejemplo sin echo
#las comillas dobles las pongo para que se tome como literal
#echo "`date` `who`"
#en este caso uso 2 comandos quiero mostrar la fecha y quienes estan conectados
#date es un comando

