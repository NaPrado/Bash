#!/bin/bash

delete(){
	cond1=1
	clear
	rm "$1"
	return 0
}

execute(){
	cond2=0
		while [ $cond2 -eq 0 ]
		do
			clear
			echo "Ejecuto el programa '$1'? (y/n)"
			read x
			if [ "$x" = "Y" ] || [ "$x" = "y" ]
			then
				cond2=1
				clear
				"./$1"
				exit 0
			elif [ "$x" = "N" ] || [ "$x" = "n" ]
			then
				cond2=1
				exit 0
			fi
		done
}

new(){
	touch "$1"
	chmod 777 "$1"
	echo "#!/bin/bash" > "$1"
	for i in 1 2
	do
		echo "" >> "$1"
	done
	vim -c 'startinsert' "$1" +3
}

chooseName(){
	echo "Ingrese el nombre del programa:"
	read nombre
	clear
	menu $nombre
}

menu(){
	if [ -e "$1" ]
	then
		cond1=0
		echo "El archivo ya existe."
		while [ $cond1 -eq 0 ]
		do
			echo "Deseas borrarlo (d), reemplazarlo (r), editarlo (e), nuevo (n), o salir (s) ?"
			read a
			if [ "$a" = "D" ] || [ "$a" = "d" ]
			then
				delete $1
				cond1=1
			elif [ "$a" = "R" ] || [ "$a" = "r" ]
			then
				delete $1
				new $1
				execute $1
				cond1=1
			elif [ "$a" = "E" ] || [ "$a" = "e" ]
			then
				vim -c 'startinsert' "$1"
				execute $1
			elif [ "$a" = "N" ] || [ "$a" = "n" ]
			then
				clear
				chooseName
			elif [ "$a" = "S" ] || [ "$a" = "s" ]
			then
				exit 0
			else
				clear
				echo "Escriba una opcion correcta ( D | R | E | N | S )."
			fi		
		done
	else
		new $1
		execute $1
	fi
}


if [ $# -eq 1 ]
then
	menu $1
else
	chooseName
fi
