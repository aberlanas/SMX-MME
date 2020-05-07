#!/bin/bash

# INDICA AQUI TU NOMBRE: 
#
# Realiza los cambios necesarios en el Script para que se comporte 
# tal y como pide en los comentarios.

# Se trata de que lo ejecuteis y comprobeis que funciona antes de enviar.

# Ejemplo de ejecucion: 
# ./EjerExamen_03.sh NyanExam.mkv 

# Almacenamos en la variable Fichero el primer parámetro.
FICHERO=$1

# Comprobamos que FICHERO existe
# FILL THE GAPS

# Si no existe salir.


# Cambiamos la resolución del video a 800x600 y lo guardamos en mp4
ffmpeg -i $FICHERO Ejer03.mp4


