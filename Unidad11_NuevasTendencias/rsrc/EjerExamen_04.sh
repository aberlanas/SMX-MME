#!/bin/bash

# INDICA AQUI TU NOMBRE: 
#
# Realiza los cambios necesarios en el Script para que se comporte 
# tal y como pide en los comentarios.

# Se trata de que lo ejecuteis y comprobeis que funciona antes de enviar.

# Ejemplo de ejecucion: 
# ./EjerExamen_04.sh NyanExam.mkv 

# Almacenamos en la variable Fichero el primer parámetro.
FICHERO=$1

# Comprobamos que FICHERO existe
# FILL THE GAPS

# Si no existe salir.

# Extrae el audio del Video y guardalo en formato .ogg
ffmpeg -i $FICHERO OPCIONES Ejer04.ogg

# Reduce la calidad del audio a 96kbps


