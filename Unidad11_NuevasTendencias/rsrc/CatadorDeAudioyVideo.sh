#!/bin/bash

# Realizad un Shell Script que utilizando Case y funciones
# nos indique la calidad del Audio que le pasamos.

# Utilizar las categorias de la pagina de Mozilla.
# https://developer.mozilla.org/en-US/docs/Web/Media/Formats/Audio_concepts

# Por ahora el script indicara que le pasemos el SampleRate como variable.
# PIDIENDOSELA AL USUARIO COMO SIEMPRE HABEIS HECHO
# A continuacion la mejoraremos para que obtenga la 
# Frecuencia del Fichero directamente.

# Funcion
obtenSampleRate(){
	read -p "Dime el Fichero : " FICHERO
	ffmpeg -i $FICHERO -hide_banner 2> ficherin.txt ; cat ficherin.txt | grep "Stream"  | grep "Audio" | cut -d "," -f2| cut -d H -f1 | sed -e "s% %%g"
}

# MAIN

SampleRate=$(obtenSampleRate)
echo "SampleRate vale $SampleRate" 

# 8000 Hz
# 44100 Hz
# 48000 Hz
# 96000 Hz
# 192000 Hz

if [ $SampleRate -ge 8000 ] && [ $SampleRate -lt 44100 ]; then
	# XAVI
	echo " Estandar G711 "
elif [ $SampleRate -ge 44100 ] && [ $SampleRate -lt 48000 ]; then
	# ELIAS
	echo " Calidad CD"
elif [ $SampleRate -ge 48000 ] && [ $SampleRate -lt 96000 ]; then
	# Adrian
	echo " Calidad DVD" 
elif [ $SampleRate -ge 96000 ] && [ $SampleRate -lt 192000 ]; then
	# Carlos Pozo :-(
	echo " Alta resolucion"
elif [ $SampleRate -ge 192000 ]; then
	# Richard
	echo " * UltraHighResolutionAudio (Rare)"
fi

exit 0


