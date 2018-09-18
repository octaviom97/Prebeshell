#!/bin/bash
#Iniciar limpiando la pantalla, creando la variable del prompt y atrapando las señanles ctrl z y c
clear
PS1="$(tput setaf 1)[$(tput sgr0)$(tput setaf 4)$USER@$(tput sgr0)$(tput setaf 2)$PWD$(tput sgr0)$(tput setaf 1)]$(tput sgr0)Carita-feliz :D "
trap "" SIGINT SIGTSTP

#Empieza la prebeshell
echo "Bienvenido a la prebeshell :D"
echo "Para salir de la terminal escriba 'salir'"
#Ciclo de control para mantener la prebeshell
ciclo=0
while [ $ciclo -eq 0 ]; do
read -p "$PS1" cmd 
#Leer variable para ejecutar los scripts adecuados
case $cmd in
	arbol)
	. $PWD/terminal/arbol.sh
	;;
	ayuda)
	. $PWD/terminal/ayuda.sh
	;;
	buscar)
	. $PWD/terminal/buscar.sh
	;;
	creditos)
	. $PWD/terminal/creditos.sh
	;;
	infosis)
	. $PWD/terminal/infosis.sh
	;;
	ahorcado)
	. $PWD/terminal/juegos/ahorcado.sh
	;;
	sopa)
	. $PWD/terminal/juegos/sopa_prrona.sh
	;;
	prebeplayer)
	. $PWD/terminal/prebeplayer.sh
	;;
	ls)
	. $PWD/terminal/ls.sh
	;;
	salir)
	echo""
	echo "Saliste de la prebeshell :("
	echo""
	ciclo=1
	;;
	*)
	echo "Comando incorrecto, prueba con 'ayuda' "
esac
done
