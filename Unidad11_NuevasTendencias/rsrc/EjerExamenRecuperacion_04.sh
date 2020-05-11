#!/bin/bash


# Welcome to recuperacion

# INDICA AQUI TU NOMBRE: 
#
# Realiza los cambios necesarios en el Script para que se comporte 
# tal y como pide en los comentarios.

# Se trata de que lo ejecuteis y comprobeis que funciona antes de enviar.

# Ejemplo de ejecucion: 
# ./EjerExamenRecuperacion_04.sh NyanExam.mkv Recuper_ 

# Almacenamos en la variable Fichero el primer parámetro.
FICHERO=$1

# Comprobamos que FICHERO existe y ademas
# y puede leerse. Si existe debe mostrar un mensaje: "Existe y se puede leer"

# A Continuacion usaremos el segundo argumento como PREFIJO DEL NOMBRE destino.

PREFIJO=$2
# Comprobaremos que "$PREFIJO" NO esta vacia. Si lo esta: usar como prefijo: "Defecto_"

# Extrae el audio del Video y guardalo en formato .ogg
ffmpeg -hide_banner -i $FICHERO OPCIONES $PREFIJO$FICHERO.ogg
