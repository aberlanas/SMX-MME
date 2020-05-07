#!/bin/bash

# INDICA AQUI TU NOMBRE: 
#
# Realiza los cambios necesarios en el Script para que se comporte 
# tal y como pide en los comentarios.

# Se trata de que lo ejecuteis y comprobeis que funciona antes de enviar.

# Ejemplo de ejecucion: 
# ./EjerExamen_02.sh NyanExam.mkv mp3


# Almacenamos en la variable Fichero el primer parámetro.
FICHERO=$1

# Almacenamos el formato de audio indicado como segundo argumento
AUDIOFORMATO=$2

# Comprobamos que FICHERO existe
# FILL THE GAPS

# Si no existe -> Salir.

# Comprobamos que AUDIOFORMATO es mp3 o ogg 

# si no es -> Salir.


# Extraemos el audio en el formato indicado
ffmpeg OPCIONES Ejer02.$AUDIOFORMATO


