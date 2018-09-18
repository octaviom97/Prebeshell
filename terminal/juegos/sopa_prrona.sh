#Juego prron papu

#Inicializar las variables
clear
juego=0
int=0
cont=0
pal1=""
pal2=""
pal3=""
pal4=""
pal5=""

#Imprimir las pistas
echo -e "Encuentra las 5 palabras"
echo -e "\nPistas:"
echo -e "\n1. Forma del becario para llamar a los nuevos :'v."
echo -e "\n2. Lo que te vuelves cuando alcanzas la iluminación, te vuelves dios y pasas los cursos."
echo -e "\n3. Nombre de la interfaz que conecta al sistema con el usuario a través de comandos."
echo -e "\n4. Nombre del curso y kernel de los sistemas operativos GNU/*****."
echo -e "\n5. Nuestra calificación ;)."

#Imprimir el juego
echo -e "\n s a t u o m b m s k n a k m i b k n g a\n"
echo -e " h a j f n p r e b e j m e n y o l i n u\n"
echo -e " g h x f s v t e w b y h j r f i d s f u\n"
echo -e " l r f i d h h y f d r w f b n r u b m o\n"
echo -e " ñ j n j m l e l a i t b b u s a n l g b\n"
echo -e " i u s e d t z l i y n a x v e c t o u u\n"
echo -e " l r f h d v h y l d r w f b h e u b m l\n"
echo -e " e o t r l u p o r e a j t r w b k b k j\n"
echo -e " i u b d d i e z l m g o i e a w n i i u"

#Ciclo para controlar  la entrada y salida del juego
while [ $juego -eq 0 ]; do

	#Imprimir las palabras resueltas
	echo -e "\nIntentos: $((5-$int))"
	echo "Palabra 1: $pal1"
	echo "Palabra 2: $pal2"
	echo "Palabra 3: $pal3"
	echo "Palabra 4: $pal4"
	echo -e "Palabra 5: $pal5\n"
	#Leer las palabras para registrar los avances
	read -p "Introduce la palabra: " palabra
	case $palabra in 
		prebe)
		pal1=prebe
		cont=$((cont+1))
		;;
		becario)
		pal2=becario
		cont=$((cont+1))
		;;
		shell)
		pal3=shell
		cont=$((cont+1))
		;;
		linux)
		pal4=linux
		cont=$((cont+1))
		;;
		diez)
		pal5=diez
		cont=$((cont+1))
		;;
		*)
		#Comparar el número de errores para acabar el juego
		if [ $int -lt 4 ]; then
			echo -e "Palabra incorrecta, intenta otra vez"
			int=$((int+1))

		elif [ $int -eq 4 ]; then
			echo -e "\nRespuestas:"
			echo -e "\n s a t u o m b m s k n a k m i b k n g a\n"
			echo -e " h a j f n \e[31m\e[42mp r e b e\e[0m\e[49m j m e n y \e[31m\e[42mo\e[0m\e[49m \e[31m\e[42ml\e[0m\e[49m i n u\n"
			echo -e " g h x f \e[31m\e[42ms\e[0m\e[49m v t e w b y h j r f \e[31m\e[42mi\e[0m\e[49m d s f u\n"
			echo -e " l r f i d \e[31m\e[42mh\e[0m\e[49m h y f d r w f b \e[31m\e[42mn\e[0m\e[49m \e[31m\e[42mr\e[0m\e[49m u b m o\n"
			echo -e " ñ j n j m l \e[31m\e[42me\e[0m\e[49m l a i t b b \e[31m\e[42mu\e[0m\e[49m s \e[31m\e[42ma\e[0m\e[49m n l g b\n"
			echo -e " i u s e d t z \e[31m\e[42ml\e[0m\e[49m i y n a \e[31m\e[42mx\e[0m\e[49m v e \e[31m\e[42mc\e[0m\e[49m t o u u\n"
			echo -e " l r f h d v h y \e[31m\e[42ml\e[0m\e[49m d r w f b h \e[31m\e[42me\e[0m\e[49m u b m l\n"
			echo -e " e o t r l u p o r e a j t r w \e[31m\e[42mb\e[0m\e[49m k b k j\n"
			echo -e " i u b d \e[31m\e[42md i e z\e[0m\e[49m l m g o i e a w n i i u\n"

			echo -e "Perdiste, fierro pariente lo siento :("
			echo -e "Ponme 10 no seas malo\n"
			juego=1
		fi
		;;
	esac

	#Mensaje de victoria
	if [ $cont -eq 5 ]; then

	echo -e "\n s a t u o m b m s k n a k m i b k n g a\n"
	echo -e " h a j f n \e[31m\e[42mp r e b e\e[0m\e[49m j m e n y \e[31m\e[42mo\e[0m\e[49m \e[31m\e[42ml\e[0m\e[49m i n u\n"
	echo -e " g h x f \e[31m\e[42ms\e[0m\e[49m v t e w b y h j r f \e[31m\e[42mi\e[0m\e[49m d s f u\n"
	echo -e " l r f i d \e[31m\e[42mh\e[0m\e[49m h y f d r w f b \e[31m\e[42mn\e[0m\e[49m \e[31m\e[42mr\e[0m\e[49m u b m o\n"
	echo -e " ñ j n j m l \e[31m\e[42me\e[0m\e[49m l a i t b b \e[31m\e[42mu\e[0m\e[49m s \e[31m\e[42ma\e[0m\e[49m n l g b\n"
	echo -e " i u s e d t z \e[31m\e[42ml\e[0m\e[49m i y n a \e[31m\e[42mx\e[0m\e[49m v e \e[31m\e[42mc\e[0m\e[49m t o u u\n"
	echo -e " l r f h d v h y \e[31m\e[42ml\e[0m\e[49m d r w f b h \e[31m\e[42me\e[0m\e[49m u b m l\n"
	echo -e " e o t r l u p o r e a j t r w \e[31m\e[42mb\e[0m\e[49m k b k j\n"
	echo -e " i u b d \e[31m\e[42md i e z\e[0m\e[49m l m g o i e a w n i i u\n"

	echo "Ganaste, en verdad eres el papu de papus"
	echo "Ahora ponme 10 :v"
	juego=1

	fi

done

	
