---
title: Unidad 11 - Nuevas Tendencias - Examen Recuperacion
header-includes: |
lang: es-ES
keywords: [SMX, MME]
---

# Enunciado

Bienvenidos al examen de recuperación de la Unidad 11.

Disponéis de 2 Horas para la realización del exámen.

Además vamos a ir componiendo un pequeño script en GNU/LinuX o en Windows que use parámetros y que compruebe una serie de items.

![Nyan Cat](imgs/nyanCat.png){ width=50% }
\

Enlaces de interés:

* https://www.ostechnix.com/20-ffmpeg-commands-beginners/
* Vídeo del Nyan Cat que encontraréis en la plataforma.

|*Aviso Navegantes*|
|------------------|
| Todas las tareas que requieran de la ejecución de un comando, ya sea en Windows,GNU/LinuX,Android,... además de lo que se pida en la tarea, debe adjuntar el comando que se debe utilizar para su solución. Incluida la captura de la ejecución del mismo.|

## Tarea 01 : Instalando ffmpeg

Instala en la Máquina Virtual el comando `ffmpeg`.

## Tarea 02 : Convirtiendo a mpeg.

Usando el FFMPEG que habéis instalado. Transformad el fichero a *.mpeg*. ¿Ocupa más o menos que el original?. Adjuntad captura del proceso de conversión. 

## Tarea 03 : Extrayendo la pista de audio y Volumen.

Vamos a crear ahora el fichero `.ogg` del NyanCat que contendrá *solo* la música.

Además crearemos dos ficheros adicionales, uno con el volumen bajado al 50% del original y otro con el volumen subido al 123% del original.

* `NyanCat_Recuperacion_SoloAudio.ogg`
* `NyanCat_Recuperacion_SoloAudio_VolumenBajado.ogg`
* `NyanCat_Recuperacion_SoloAudio_VolumenSubido.ogg`

## Tarea 04 : Re-escalando el video.

Realiza un escalado del vídeo. Realiza los cambios necesarios en el comando para que escale a *800x600* vuestro NyanCat y lo guarde como : `NyanCat_Recuperacion_ReEscalado.mp4`.

## Tarea 05 : Poniéndole una imagen fija a un Audio.

Utilizando el fichero de la Tarea 3, y la imágen que se adjunta en el examen, establecela de fondo durante la reproducción del audio.

* `fondoImagen.png`

![Fondo Imagen](imgs/fondoImagen.png)
\

## Tarea 06 :  Script Resumen

Realiza un *Shell Script*, que ofreciendo un menú nos permita hacer las tareas que hemos visto en el examen.

Para ayudaros un poco en la realización, os adjunto el  *esqueleto* del Script.

\newpage
```shell
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
```
