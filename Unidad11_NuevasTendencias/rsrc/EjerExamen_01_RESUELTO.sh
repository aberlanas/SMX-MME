#!/bin/bash

# INDICA AQUI TU NOMBRE: 
#
# Realiza los cambios necesarios en el Script para que se comporte 
# tal y como pide en los comentarios.

# Se trata de que lo ejecuteis y comprobeis que funciona antes de enviar.

# Ejemplo de ejecucion: 
# ./EjerExamen_01.sh NyanExam.mkv 

# Almacenamos en la variable Fichero el primer parámetro.
FICHERO=$1

# Comprobamos que FICHERO existe, si existe mostrar un mensaje
# FILL THE GAPS
if [ -e $FICHERO ]; then
    echo " * El fichero : $FICHERO existe"
else 
    # Si no existe salir.
    exit 0
fi

# Cambiamos el formato de fichero a AVI.
ffmpeg -i $FICHERO Ejer01.avi

exit 0
