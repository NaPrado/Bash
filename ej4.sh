#!/bin/bash 
# Mi primer programa en bash
echo "Hola " $USER 
echo La fecha de hoy es: `date '+%d/%m/%Y'`
echo Este es el contenido de su directorio home
ls -l $HOME
#usamos el comando ls que ya conocemos de linux
#la variable de entorno $HOME que representa el path de nuestro home
