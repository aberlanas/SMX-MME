#!/bin/bash


# Welcome to recuperacion


# INDICA AQUI TU NOMBRE: 
#
# Realiza los cambios necesarios en el Script para que se comporte 
# tal y como pide en los comentarios.

# Se trata de que lo ejecuteis y comprobeis que funciona antes de enviar.

# Ejemplo de ejecucion: 
# ./EjerExamenRecuperacion_02.sh NyanExam.mkv mp3


# Almacenamos en la variable Fichero el primer parámetro.
FICHERO=$1

# Almacenamos si queremos mudo o no mudo en una variable
read -p " Dime si quieres mudo : (y/n)" ESMUDO

# Comprobamos que FICHERO existe y ademas
# y puede leerse. Si existe debe mostrar un mensaje: "Existe y se puede leer"

# Para ello debereis usar : man test.
# FILL THE GAPS

# Si no existe -> Salir.

# Comprobamos que ha marcado mudo (ha seleccionado "y")
# y en ese caso le quitamos el audio al video.

ffmpeg -hide_banner OPCIONES Ejer02_Mudo.mkv

# SI NO : MOSTRAR El MENSAJE: Nada que hacer.

