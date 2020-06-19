#!/bin/bash

echo "== [ Compilador de Tareas : SMX - MME ] =="

mkdir -p PDFS

# Some values

RED='\033[0;31m'
GREEN="\033[0;32m"
NC='\033[0m' # No Color

TEMPLATE_TEX="../rsrc/templates/temas-tpl.latex"
TEMPLATE_TEX_TAREAS="../rsrc/templates/tareas-tpl.latex"
#TEMPLATE_TEX_TAREAS="../rsrc/templates/tareas-nologo-tpl.latex"
TEMPLATE_TEX_ANEXOS="../rsrc/templates/anexos-tpl.latex"
TEMPLATE_TEX_PD="../rsrc/templates/pd-nologo-tpl.latex"
PDF_PATH="$(readlink -f PDFS)"
PANDOC_OPTIONS="-V fontsize=12pt -V mainfont="Ubuntu" --pdf-engine=xelatex "

#
# Programacion Didactica
PD_PATH="ProgramacionDidactica"

#
# UD : Nombres de las Unidades

UD01_NAME="Unidad01_IntroduccionSistemaBinario"
UD02_NAME="Unidad02_ProteccionAmbientalYHerramientas"
UD03_NAME="Unidad03_ComponentesBasicos"
UD04_NAME="Unidad04_PlacaBase"
UD05_NAME="Unidad05_Microprocesadores"
UD06_NAME="Unidad06_Memoria"
UD07_NAME="Unidad07_AlmacenamientoExterno"
UD08_NAME="Unidad08_Tarjetas"
UD09_NAME="Unidad09_Ensamblaje"
UD10_NAME="Unidad10_Perifericos"
UD11_NAME="Unidad11_NuevasTendencias"
UD12_NAME="Unidad12_Mantenimiento"
UD13_NAME="Unidad13_Tecnicas"
UD14_NAME="Unidad14_Particiones"
UD15_NAME="Unidad15_UtilidadesBackups"
REC_3EVA="Recuperacion_3EVA"
#
## Unidades
#

say_ok(){
    echo -e " * [ ${GREEN}OK${NC} ] : $1"
}
say_error(){
    echo -e " * [ ${RED}Error${NC} ] : $1"
}

say_file(){

    if [ -f $1 ]; then 
        say_ok "$(readlink -f $1)"
    else
        say_error " [ Warning ] : Not a file $1 "
    fi
    
}

##
# Make teoria
make_teoria(){
    UDTEORIA="${1}"
    echo " * Teoria : $1"
    pandoc --template ${TEMPLATE_TEX} ${PANDOC_OPTIONS} -o ${PDF_PATH}/${UDTEORIA}_Teoria.pdf Teoria_*.md
    say_ok "$(readlink -f "${PDF_PATH}/${UDTEORIA}_Teoria.pdf") "
}


##
# Make Practicas
make_practicas(){
    UDPRACTICAS="${1}"
    echo " * Practicas : ${UDPRACTICAS}"
    NUMP=1
    for ejer in $(ls -1 Tarea_*.md ); do 
        NUM=$(echo $ejer | cut -d "_" -f2 | cut -d "." -f1)
	    NOMBRE=$(echo $ejer | cut -d "_" -f3 | cut -d "." -f1)
        pandoc --template ${TEMPLATE_TEX_TAREAS} ${PANDOC_OPTIONS} -o ${PDF_PATH}/${UDPRACTICAS}_Tarea_"${NUMP}"_"${NOMBRE}".pdf $ejer
        say_file ${PDF_PATH}/${UDPRACTICAS}_Tarea_${NUMP}_${NOMBRE}.pdf
        let NUMP=NUMP+1
    done



    }

## 
# Make Anexos
make_anexos(){
    UDANEXOS="${1}"
    echo " * Anexos : ${UDANEXOS}"
    for ejer in $(ls -1 Anexo_*.md ); do 
        NUM=$(echo $ejer | cut -d "_" -f2 | cut -d "." -f1)
	    NOMBRE=$(echo $ejer | cut -d "_" -f3 | cut -d "." -f1)
        pandoc --template ${TEMPLATE_TEX_ANEXOS} ${PANDOC_OPTIONS} -o ${PDF_PATH}/${UDPRACTICAS}_Anexo_"${NUM}"_"${NOMBRE}".pdf $ejer
        say_file ${PDF_PATH}/${UDPRACTICAS}_Anexo_${NUM}_${NOMBRE}.pdf
    done

    }

move_pdfs(){
    UDNAME=$1

    mkdir -p PDFS/${UDNAME}
    rm -rf PDFS/${UDNAME}/*
    mv PDFS/*.pdf PDFS/${UDNAME}/

    say_ok "PDFS generados en : PDFS/${UDNAME}/"
}

#
# Make Programacion Didactica
# 

make_pd(){
    cd ${PD_PATH}
    pandoc --template ${TEMPLATE_TEX_PD} ${PANDOC_OPTIONS} -o ${PDF_PATH}/ProgramacionDidacticaMME.pdf PD_*.md
    pandoc -o ${PDF_PATH}/ProgramacionDidacticaMME.odt PD_*.md

    say_file ${PDF_PATH}/ProgramacionDidacticaMME.pdf
    mkdir -p ${PDF_PATH}/PD/
    mv ${PDF_PATH}/ProgramacionDidacticaMME.pdf ${PDF_PATH}/PD/
    say_ok "PDFS generados en : ${PDF_PATH}/PD/"

}



# 
# Make Unidades
# 

make_UD01(){

    cd ${UD01_NAME}
    
    #make_teoria ${UD01_NAME}
    make_practicas ${UD01_NAME}
    
    cd ..

    move_pdfs ${UD01_NAME}
}

make_UD02(){

    cd ${UD02_NAME}
    make_teoria ${UD02_NAME}
    make_practicas ${UD02_NAME}
    cd ..

    move_pdfs ${UD02_NAME}
}

make_UD03()
{
    cd ${UD03_NAME}
    make_teoria ${UD03_NAME}
    make_practicas ${UD03_NAME}
    cd ..


    move_pdfs ${UD03_NAME}
}

make_UD04()
{
    cd ${UD04_NAME}
    make_teoria ${UD04_NAME}
    make_practicas ${UD04_NAME}
    cd ..

    move_pdfs ${UD04_NAME}
}

make_UD05()
{
    cd ${UD05_NAME}
    make_teoria ${UD05_NAME}
    make_practicas ${UD05_NAME}
    cd ..

    move_pdfs ${UD05_NAME}
}

make_UD06()
{
    cd ${UD06_NAME}
    make_teoria ${UD06_NAME}
    make_practicas ${UD06_NAME}
    cd ..

    move_pdfs ${UD06_NAME}
}


make_UD07()
{
    cd ${UD07_NAME}
    make_teoria ${UD07_NAME}
    make_practicas ${UD07_NAME}
    cd ..

    move_pdfs ${UD07_NAME}
}

make_UD08(){
    cd ${UD08_NAME}
    make_teoria ${UD08_NAME}
    make_practicas ${UD08_NAME}
    
    cd ..

    move_pdfs ${UD08_NAME}

}

make_UD09(){
    cd ${UD09_NAME}
    make_teoria ${UD09_NAME}
    make_practicas ${UD09_NAME}
    cd ..


    move_pdfs ${UD09_NAME}
}

make_UD10(){
    cd ${UD10_NAME}
    make_teoria ${UD10_NAME}
    make_practicas ${UD10_NAME}
    cd ..

    move_pdfs ${UD10_NAME}

}

make_UD11(){
    cd ${UD11_NAME}
    make_teoria ${UD11_NAME}
    make_practicas ${UD11_NAME}
    cd ..


    move_pdfs ${UD11_NAME}
}

make_UD12(){
    cd ${UD12_NAME}
    make_teoria ${UD12_NAME}
    make_practicas ${UD12_NAME}
    cd ..


    move_pdfs ${UD12_NAME}
}

make_UD13(){
    cd ${UD13_NAME}
    make_teoria ${UD13_NAME}
    make_practicas ${UD13_NAME}
    cd ..


    move_pdfs ${UD13_NAME}
}

make_UD14(){
    cd ${UD14_NAME}
    make_teoria ${UD14_NAME}
    make_practicas ${UD14_NAME}
    cd ..


    move_pdfs ${UD14_NAME}
}

make_UD15(){
    cd ${UD15_NAME}
    make_teoria ${UD15_NAME}
    make_practicas ${UD15_NAME}
    cd ..

    move_pdfs ${UD15_NAME}
}


make_Rec3(){
    cd ${REC_3EVA}
    echo " * Recuperando 3 Eva"
    #make_teoria ${REC_3EVA}
    make_practicas ${REC_3EVA}
    cd ..

    move_pdfs ${REC_3EVA}
}

#
# MAIN

case $1 in 
    "PD")
        make_pd
        ;;
    "01")
        make_UD01     
		;;
    "02")
	make_UD02
	    ;;
    "03")
	make_UD03
		;;
    "04")
        make_UD04
        ;;
    "05")
        make_UD05
        ;;
    "06")
		make_UD06
		;;
    "07")
        make_UD07
        ;;
    "08")
        make_UD08
		;;
    "09")
        make_UD09
		;;
    "10")
        make_UD10
	;;
    "11")
        make_UD11
	;;
    "12")
        make_UD12
	;;
    "13")
        make_UD13
	;;
    "14")
        make_UD14
	;;
    "15")
        make_UD15
	;;
    "Rec3")
        make_Rec3
    ;;
    "all")
        make_UD01
        make_UD02
        make_UD03
        make_UD04
        make_UD05
        make_UD06
        make_UD07
        make_UD08
        make_UD09
        make_UD10
        make_UD11
        make_UD12
        make_UD13
        make_UD14
        make_UD15
        ;;
    *)
        echo "Unidad desconocida"
		exit 1
		;;
esac    

exit 0
