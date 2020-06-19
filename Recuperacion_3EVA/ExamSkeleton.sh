#!/bin/bash

FICHERO=""

select_file(){
	read -p " Indicame el fichero de trabajo : " FICHERO
}


show_menu(){
	echo " Examen Recuperacion : Conversor"
	echo " * Working with: $FICHERO"
	echo "================================"
	echo " 0 ) Selecciona de nuevo el fichero de trabajo"
	echo " 1 ) Convierte el fichero a MPEG"
	echo " 2 ) Extraer Audio"
	echo " 3 ) Extraer Audio y Bajar Volumen"
	echo " 4 ) Extraer Audio y Subir Volumen"
	echo " 5 ) Reescalando el video "
	echo " 6 ) Poniendo imagen fija a audio"
	echo " q ) Salir"
	

	read -p " Dime que opcion requieres : " OPCION
}

# Main

select_file

while true; do

	show_menu

	case $OPCION in
	q)
		echo " ... Saliendo..."
		exit 0
		;;
	*)
		echo " Opcion desconocida "
		;;
	esac
done

exit 0
