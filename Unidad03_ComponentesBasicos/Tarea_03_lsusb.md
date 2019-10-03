---
title: Unidad 03 - Componentes Básicos
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [SMX, MME]
---

# Tarea : lsusb

## Indicaciones

Responde a las siguientes preguntas en un documento. Copia el enunciado de las preguntas en el documento de respuestas.
Responde con *TUS PROPIAS PALABRAS*. En caso de que un documento sea una copia de algún lugar de internet y/o de otr@ alumn@
de la clase la nota final del ejercicio es un 0.

### Ejercicio 01

El comando `lsusb` muestra información acerca de los dispositivos y concentradores USB que tenemos conectados en nuestro equipo.
Un ejemplo de salida de la ejecución es el siguiente:

```bash
aberlanas@zen:~$lsusb
Bus 003 Device 004: ID 0bda:0165 Realtek Semiconductor Corp. 
Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 007 Device 003: ID 12c9:1002  
Bus 007 Device 002: ID 046d:c336 Logitech, Inc. 
Bus 007 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
Bus 006 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 005 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 004 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
Bus 009 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 008 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
```

Se trata de un comando muy útil que nos ayuda a detectar si algo ha sido configurado de manera correcta por parte del sistema
o si no está siendo detectado.

Podemos obtener más detalles de los dispositivos si lo ejecutamos con la opción `-v`.

Otra opción la mar de interesante es `-t` ya que nos muestra la jerarquía interna de switches y hubs USB.

```bash
/:  Bus 09.Port 1: Dev 1, Class=root_hub, Driver=xhci_hcd/2p, 5000M
/:  Bus 08.Port 1: Dev 1, Class=root_hub, Driver=xhci_hcd/2p, 480M
/:  Bus 07.Port 1: Dev 1, Class=root_hub, Driver=ohci-pci/4p, 12M
    |__ Port 1: Dev 2, If 1, Class=Human Interface Device, Driver=usbhid, 12M
    |__ Port 1: Dev 2, If 0, Class=Human Interface Device, Driver=usbhid, 12M
    |__ Port 2: Dev 3, If 0, Class=Human Interface Device, Driver=usbhid, 12M
    |__ Port 2: Dev 3, If 1, Class=Human Interface Device, Driver=usbhid, 12M
/:  Bus 06.Port 1: Dev 1, Class=root_hub, Driver=ohci-pci/2p, 12M
/:  Bus 05.Port 1: Dev 1, Class=root_hub, Driver=ohci-pci/5p, 12M
/:  Bus 04.Port 1: Dev 1, Class=root_hub, Driver=ohci-pci/5p, 12M
/:  Bus 03.Port 1: Dev 1, Class=root_hub, Driver=ehci-pci/4p, 480M
    |__ Port 4: Dev 4, If 0, Class=Chip/SmartCard, Driver=, 480M
/:  Bus 02.Port 1: Dev 1, Class=root_hub, Driver=ehci-pci/5p, 480M
/:  Bus 01.Port 1: Dev 1, Class=root_hub, Driver=ehci-pci/5p, 480M
```

Y ahora nos metemos en harina...

 * ¿Que parámetros debemos pasarle a lsusb para obtener información **Solamente** del dispositivo conectado *Logitech*.? Para realizar las pruebas, elegir un dispositivo que os aparezca en vuestra máquina (típicamente un ratón), y cuando os vaya a vosotros con vuestra máquina, será fácil extrapolar el resultado al ejemplo dado.

