<h1>Aula 6</h1>

Esta clase consiste en aprender a programar en la tarjeta de desarrollo FPGA Cyclone IV EP4CE6E22C8N.

<h2></h2>

Después de haber compilado al 100% el proyecto en Quartus, se deben asignar los pines de la entidad del proyecto con los pines de la tarjeta de desarrollo en la opción Assignments>Pin Planner. Para esto, es indispensable conocer la identificación de los periféricos en los pines del FPGA, la cual se encuentra en el archivo "Development board schematic diagram V2.1"

<div align="center">
<img src="image.png" alt="Asignación de pines"/>
<br>
<figcaption>Fuente: Autor</figcaption>
</div>

Posteriormente a la correcta asignación de pines se debe compilar nuevamente al 100% el proyecto, para así finalmente programar el FPGA a través de la conexión JTAG en Tools>Programmer y en la opción "Hardware Setup" seleccionar USB-Blaster. Es importante resaltar que el archivo necesario para programar es el archivo .SOF que se encuentra en la carpeta outputs_files, la cual está dentro de la carpeta del proyecto.

<div align="center">
<img src="image-1.png" alt="Selección de hardware"/>
<br>
<figcaption>Fuente: Autor</figcaption>
</div>

Si Windows no reconoce el driver del programador USB Blaster se debe instalar el driver desde la carpeta de instalación de Quartus de la siguiente manera:

1. Abrir el administrador de dispositivos
2. Encontrar el driver en "otros dispositivos"
3. Actualizar el controlador desde un archivo en el PC 
4. Seleccionar la carpeta C:\intelFPGA_lite
5. Verificar que el driver aparezca en controladores USB

Finalmente, dar click en la opción start para comenzar la programación, la cual debe llegar a un progreso de 100%

<h3>Ejercicio</h3>

Modificar el tipo de compuerta AND a las siguientes compuertas y analizar el comportamiento en la tarjeta de desarrollo, teniendo en cuenta los diagramas esquemáticos del led y de los pulsadores:

<div align="center">
<img src="image-2.png" alt="Tabla de verdad de compuertas"/>
<br>
<figcaption>Fuente: http://muslimin.id/pengertian-logical-gate/</figcaption>
</div>

Como buena prática, antes de desconectar físicamente el USB del programador, se debe desconectar seleccionando "No Hardware" en Tools>Programmer y en la opción "Hardware Setup".

<div align="center">
<img src="image-3.png" alt="Desconexión del programador"/>
<br>
<figcaption>Fuente: http://muslimin.id/pengertian-logical-gate/</figcaption>
</div>

Si se desconecta la alimentación y se vuelve a conectar en la tarjeta de desarrollo, es decir, si se apaga y se enciende la tarjeta de desarrollo, la programación realizada anteriormente se pierde, por tanto se deben seguir estos pasos cada vez que se desee programar para garantizar que el programa quedará guardado en la memoria ROM del FPGA:

1.
2.


