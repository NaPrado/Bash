    $#  #cantidad de argumentos 
    $@  #que parametros se ingresaron
    $?  #el ultimo comando fue exitoso? (exit 0) 
    $1  #el primer parametro
    $2  #el segundo parametro
#   $n   el enesimo parametro

variableNum = 5
variableString = "hola"

if [ $variableNum -eq 5 ]
then
    #algo
fi
#comparo si 2 numeros son iguales y hago algo

if [ "$variableString" = "hola" ]
then
    #algo
fi
#comparo si 2 cadenenas de caracteres son iguales y hago algo

if [ $variableNum -eq 5 ]
then
    #algo
elif [ "$variableString" = "hola" ]
then
    #otra cosa
else
    #nada
fi

variableNum=4               #Modifico el valor de la variable variableNum
variableString="fecha"      #Modifico el valor de la variable fecha

# Operadores de comparacion
# if [ "$a" -eq "$b" ] $a es igual a $b ?
# if [ "$a" -ne "$b" ] $a es distinto a $b ?
# if [ "$a" -gt "$b" ] $a es mayor a $b ?
# if [ "$a" -ge "$b" ] $a es mayor/igual a $b ?
# if [ "$a" -lt "$b" ] $a es menor a $b ?
# if [ "$a" -le "$b" ] $a es menor/igual a $b ?
# if [ "$a" = "$b" ] la cadena de texto $a es igual a la cadena de texto $b ?
# otras https://www.imd.guru/sistemas/bash/operadores-de-comparacion.html