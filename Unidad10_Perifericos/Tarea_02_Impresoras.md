---
title: Unidad 10 - Impresoras
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [SMX, MME]
---

A lo largo de las siguientes tareas configuraremos el servidor de
Impresión CUPS para que se comporte de maneras diferentes.

Recordad que todo los *servicios* se componen de 3 partes fundamentales:

-   Ficheros de configuración.
-   Ficheros de registro (*logs*).
-   Ficheros binarios (el propio servicio).

El dominio de estos 3 conceptos nos permitirá *adaptarnos* a cualquier
situación y sabremos configurar cualquier servicio que nos pidan si
tenemos en cuenta que siempre se comportan de un modo parecido.

Tarea 01 : cups-PDF
===================

Instalar en la máquina virtual el paquete `cups-pdf` y configurar la
impresora para que su *Directorio de Salida* sea :

`/srv/impresoras/`

Comprobar que la ruta está creada, tiene los permisos, etc...

Adjuntar captura de que se está imprimiendo allí además de:

-   El registro del servicio de impresión.
-   El fichero de configuración modificado.
-   Una captura donde se muestren los permisos y la ruta del fichero.
-   Una captura donde se muestren que los ficheros se están imprimendo.

Comprobar también que se imprimen los ficheros y se crean en el
directorio configurado.

Tarea 02 : logs - cups-PDF
==========================

Modificar la impresora configurada anteriormente para que su carpeta de
`logs`, se encuentre en :

`/var/log/cups-senia/`

Deberéis crear la ruta, así como los permisos.

Adjuntar:

-   El fichero de configuración.
-   Una captura de los diferentes ficheros de log que se crean al
    realizar las operaciones normales de impresión, etc. (Esos ficheros
    se han de crear en la ruta anteriormente descrita).
