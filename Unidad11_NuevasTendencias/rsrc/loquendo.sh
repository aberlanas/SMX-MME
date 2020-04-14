#!/bin/bash

echo " Hola, bienvenid@s a CasiLoquendo"
echo " Hello, welcome to CasiLoquendo"

echo " Which language you prefer / Que idioma prefiere : [en/es]"
read LANGUAGE 

if [ $LANGUAGE = "en" ]; then
    read -p "What is your name? : " NAME
    MSG="Hello $NAME How are you?"
else
    read -p "¿Cómo te llamas? : " NAME
    MSG="Hola $NAME ¿Como estas?"
fi

espeak -v $LANGUAGE "$MSG"

exit 0