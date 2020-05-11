#!/bin/bash

# Welcome to recuperacion

# INDICA AQUI TU NOMBRE: 
#
# Realiza los cambios necesarios en el Script para que se comporte 
# tal y como pide en los comentarios.

# Se trata de que lo ejecuteis y comprobeis que funciona antes de enviar.

# Ejemplo de ejecucion: 
# ./EjerExamenRecuperacion_01.sh NyanExam.mkv 

# Almacenamos en la variable Fichero el primer parámetro.
FICHERO=$1

# Comprobamos que FICHERO existe y ademas
# y puede leerse. Si existe debe mostrar un mensaje: "Existe y se puede leer"

# Para ello debereis usar : man test.
# FILL THE GAPS

# Si no existe salir.

# Cambiamos el formato de fichero a AVI.
ffmpeg -hide_banner -i $FICHERO Ejer01.avi


