<h1>Aula 3</h1>

Esta clase consiste en presentar una introducción a la FPGA y a VHDL

<h2>FPGA</h2>

Un FPGA es un arreglo de compuertas programables en campo, es decir, es una arquitectura reconfigurable matricial de elementos lógicos que integra principalmente tres componentes: 1. Bloques Lógicos Configurables (CLBs), 2. Puertos de entradas y salidas (I/O) e 3. Interconexiones programables. El FPGA es programado a través de Lenguajes de Descripción de Hardware (HDL), tales como: Verilog y VHDL. Así mismo, se utilizan softwares como Vivado (Xilinx) y Quartus (Altera) como IDEs para la compilación y programación.

<div align="center">
<img src="image-2.png" alt="Chips FPGA"/>
<br>
<figcaption>Fuente: https://architecnologia.es/nucleos-licencias-hardware</figcaption>
</div>

<h3>Arquitectura de la FPGA</h3>

Arquitectura interna de una FPGA: LUTs (Look-Up Tables), flip-flops, bloques DSP, etc.

- Bloques Lógicos Configurables (CLBs): Contienen los elementos lógicos básicos (BLEs), tales como Look-Up Tables (LUTs) de 4 entradas, flip flops (FF) e multiplexadores, donde las LUTs son tablas de verdad de las compuestas booleanas y de las combinaciones entre estas; dichos elementos lógicos son utilizados de acuerdo a las instrucciones de la descripción del programa (Verilog y VHDL).

- Puertos de entradas y salidas (I/O): Son los pines de conexión de la FPGA con el exterior, donde se pueden conectar señales digitales y/o análogas de sensores y actuadores.

- Interconexiones programables: Son las que permiten conectar dos o más CLBs para crear funciones más complejas a través de los bloques de conexión (CBs) y los bloques de conmutación (SW), los cuales son compuestos por transistores.

<div align="center">
<img src="image-1.png" alt="Arquitectura FPGA"/>
<br>
<figcaption>Fuente: http://repositorio.unb.br/handle/10482/32669</figcaption>
</div>

<h3>Flujo de proyecto en FPGA</h3>

<div align="center">
<img src="image-3.png" alt="Flujo de desarrollo en FPGA"/>
<br>
<figcaption>Fuente: https://www.my-boardclub.com/how-mcu-users-can-benefit-from-exploring-the-scope-to-use-a-low-end-fpga/</figcaption>
</div>

<h3>FPGA Altera Cyclone IV EP4CE6E22C8</h3>

El chip de la FPGA Altera Cyclone IV EP4CE6E22C8 es de montaje superficial de 144 pines

<div align="center">
<img src="image-5.png" alt="Chip FPGA Altera EP4CE6"/>
<br>
<figcaption>Fuente: https://www.vemeko.com/cyclone-iv-gx-fpga/</figcaption>
</div>


<div align="center">
<img src="image-6.png" alt="Recursos FPGA Altera EP4CE6"/>
<br>
<figcaption>Fuente: Device Handbook Vol. 1</figcaption>
</div>


<div align="center">
<img src="image-7.png" alt="Pinout FPGA Altera EP4CE6"/>
<br>
<figcaption>Fuente: Device Handbook Vol. 1</figcaption>
</div>

<h2>Diferencias entre FPGA, ASIC y microcontroladores</h2>

<div align="center">
<img src="image-9.png" alt="FPGA vs microcontrolador"/>
<br>
<figcaption>Fuente: https://www.ipcb.com/es/pcb-blog/10125.html</figcaption>
</div>

<h2>Tarjeta de desarrollo</h2>

La tarjeta de desarrollo integra FPGA y periféricos

<div align="center">
<img src="image.png" alt="Tarjeta EP4CE6"/>
<br>
<figcaption>Fuente: https://fpga.redliquid.pl</figcaption>
</div>

<div align="center">
<img src="image-8.png" alt="Periféricos Tarjeta EP4CE6"/>
<br>
<figcaption>Fuente: </figcaption>
</div>

<h2>Programador USB Blaster</h2>

El programador USB Blaster es utilizado para transferir el código del PC a la FPGA a través de Comunicación JTAG

<div align="center">
<img src="image-4.png" alt="Programador USB Blaster"/>
<br>
<figcaption>Fuente: https://www.intel.com/content/www/us/en/docs/programmable/683076/current/connecting-the-to-the-board.html</figcaption>
</div>

<h2>VHDL</h2>

VHDL es un lenguaje de descripción de hardware a través del cual se describe (modela) la estructura y el comportamiento de circuitos digitales ejecutados en paralelo e impulsados por eventos (clock). VHDL corresponde a la mezcla entre VHSIC (Very High Speed Integrated Circuit) y HDL (Hardware Description Language).

Un código en VHDL se caracteriza por dos partes fundamentales: 1. Entidad y 2. Arquitectura. La entidad es la estructura del bloque y la arquitectura es el comportamiento de dicho bloque

La sintaxis de un código en VHDL está estructurado de la siguiente manera:

```vhdl
LIBRARY library_name;
USE library_name.package_name.package_parts;

ENTITY entity_name IS
    PORT(
        port1_name : port_mode port_type;
        port2_name : port_mode port_type;
        ...
        portn_name : port_mode port_type;
    );
END entity_name

ARCHITECTURE architecture_name OF entity_name IS
    declarations
    BEGIN
        code ...
END architecture_name
```


<h2>Test bench</h2>

El Test bench es utilizado para realizar la simulación RTL en simuladores como ModelSim y así observar, depurar y analizar el comportamiento de los puertos y de las señales internas del programa en VHDL.

