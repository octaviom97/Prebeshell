#/bin/bash!
	clear
	echo -e "\tUsaste el comando arbol\n"
	echo -e "Para salir escribe 'salir'\n"
	ciclo2=0
	while [ $ciclo2 -eq 0 ]; do
	read -p "¿Qué directorio deseas ver? " n
	case $n in
		"")
		echo ""
		find
		echo ""
		;;
		terminal)
		echo ""
		find terminal
		echo ""
		;;
		scripts)
		echo ""
		find scripts
		echo ""
		;;
		juegos)
		echo ""
		find terminal/juegos
		echo ""
		;;
		salir)
		ciclo2=1
		;;
		*)
		echo "Opción incorrecta, intente otra vez."
	esac
	done

