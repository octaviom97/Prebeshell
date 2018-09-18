#/bin/bash!

clear
#Crear la variable ayuda e imprimir los comandos
helmiplis="¿Sobre que comando desea ayuda? "
echo "Para salir escriba 'salir'"
echo "		Lista de comandos"
echo "arbol"
echo "ayuda"
echo "buscar"
echo "creditos"
echo "infosis"
echo "ahorcado"
echo "sopa"
echo "ls"

#Ciclo para controlar los comandos
ciclin=0
while [ $ciclin -eq 0 ]; do
echo ""
read -p "$helmiplis" var
case $var in
	arbol)
	. $PWD/scripts/aarbol.sh
	;;
	ayuda)
	. $PWD/scripts/aayuda.sh
	;;
	buscar)
	. $PWD/scripts/abuscar.sh
	;;
	creditos)
	. $PWD/scripts/acreditos.sh
	;;
	infosis)
	. $PWD/scripts/ainfosis.sh
	;;
	ahorcado)
	. $PWD/scripts/aahorcado.sh
	;;
	sopa)
	. $PWD/scripts/asopa.sh
	;;
	ls)
	. $PWD/scripts/als.sh
	;;
	salir)
	ciclin=1
	;;
	*)
	echo "Comando incorrecto, prueba otra vez"
esac
done
