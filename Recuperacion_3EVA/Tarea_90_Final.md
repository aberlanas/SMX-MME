---
title: Examen Recuperacion - MME
header-includes: |
lang: es-ES
keywords: [SMX, MME]
---

# Enunciado

Nombre del Alumn@: 

Bienvenidos al examen de recuperación de Montaje y Mantenimiento de Equipos.

Disponéis de 2 Horas para la realización del exámen.

|*Aviso Navegantes*|
|------------------|
| Todas las tareas que requieran de la ejecución de un comando, ya sea en Windows,GNU/LinuX,Android,... Si no recordáis qué comando ejecutar, describid el funcionamiento del mismo.

## Tarea 1 : [ Teoria ] Componentes básicos

¿Cuáles son los elementos báscios de la Arquitectura Von Neumann? 

## Tarea 2 : [ Teoría ] Cuello de botella

¿Qué es el problema del *cuello de botella*? ¿Entre qué componentes es común que se dé?

## Tarea 3 : [ Práctica ] DDR

Las siglas *DDR* en el montaje de equipos se utilizan sobretodo para hacer referencia a un tipo de componente. ¿Cuál es?.¿Qué diferencia **física** y **perceptible al ojo humano** podemos encontrar entre los componentes DDR3 y los DDR4.

## Tarea 4 : [ Práctica ] Buses

¿Qué son los buses PCI? ¿Qué componentes estan conectados mediante estos buses?.

## Tarea 5 : [ Práctica ] Microprocesadores I

Contesta a las siguientes preguntas:

 * ¿Qué indican los bits en los microprocesadores (*32bits*, *64bits*)?
 * ¿Qué familia de microprocesadores presenta un menor consumo de energía : AMD, ARM o Intel?
 * ¿Qué es un *flag* del microprocesador? 
 * ¿Qué indica el *flag* **VT-x** o **AMD-V**?

## Tarea 6 : [ Práctica ] Particiones

 * ¿Qué es la tabla de particiones?
 * ¿Donde se encuentra el *mbr* de un disco duro? 
 * ¿Qué realiza el siguiente comando?
   * `dd if=/dev/sda of=mbr.iso bs=512 count=1`
 * ¿Qué es GPT?
 * ¿Qué fichero contiene en GNU/LinuX la información de la tabla de particiones y sus sistemas de ficheros?

\newpage

## Tarea 7 :  Script Resumen

Realiza un *Shell Script*, que ofreciendo un menú nos permita hacer las tareas siguientes

Cada una de las opciones debe de mostrar **únicamente** lo que se pide, no más información. El uso de `grep`, `cut` y demás comandos es requisito.

En las opciónes 3 y 8 debe indicar mediante la palabra: "Habilitado" o "Deshabilitado" si se tiene la opción habilitada.

En la opción 6 debe aparecer 1 por línea:

```shell
/dev/sda1       ext4
/dev/sda5       vfat
```
Para ayudaros un poco en la realización, os adjunto el  *esqueleto* del Script.

\newpage
```shell
#!/bin/bash
show_menu(){
        echo " Examen Recuperacion : Atlas"
        echo "================================"
        echo " 0 ) Muestra el vendor del procesador"
        echo " 1 ) Muestra la versión del Kernel en USO"
        echo " 2 ) Muestra la RAM disponible"
        echo " 3 ) Muestra si tiene habilitada la extensión mmx"
        echo " 4 ) Muestra el espacio disponible en la partición de /"
        echo " 5 ) Cuenta el número de particiones de nuestro primer disco duro."
        echo " 6 ) Indica los filesystems de las particiones montadas."
        echo " 7 ) Muestra la IP de todas las tarjetas de red del equipo".
        echo " 8 ) Tiene conexión con (routersecurity.org)"
        echo " q ) Salir"
        read -p " Dime que opcion requieres : " OPCION
}
show_cpu_arch(){
        cat /proc/cpuinfo | grep vendor | cut -d ":"  -f2 | 
                                sed -e "s%^ %%g"| tail -n 1
}
# Main
select_file
while true; do
        show_menu
        case $OPCION in
        0) 
                show_cpu_arch
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

\newpage


