vagrantExamples
===============

A collections of vagrant examples using chef

¿Qué es Vagrant?
===============

Una herramienta que usa Virtualvbox para construir máquinas virtuales portables, configurables, ligeras y fáciles de manejar. El mayor objetivo es asegurar consistencia y uniformidad entre los entornos de trabajo.

¿En qué podria serme útil Vagrant?
===============
Imagina que tienes un equipo de desarrolladores web que usan LAMP (linux, Apacje, Mysql y Php). Su ambiente de trabajo difiere de su ambiente de producción, así que Vagrant puede reproducir este último para que el trabajo sea más cómodo.

¿Qué contiene este proyecto?
===============
Contiene una serie de ejemplos secuenciales, es decir, empieza con ejemplos muy básicos y a medida que avanza, aumenta la complejidad pero tambien, la versatilidad  y las opciones que tenemos con vangrant

¿Tienes un pequeños resumen de cada ejemplo?
===============
Claro, los enumeraré:
1. Crear una máquina virtual simple a partir de una box e ingresar a ella
2. Crear una máquina virtual simple a partir de una box, añadir una receta para actualizar la lista de fuentes para descargar programas usando Chef.
3. Crear una máquina virtual cambiando los parametros de memoria virtual y agregandole un nombre
4. Crear una máquina virtual e instalar (automáticamente) un paquete .tar (en este caso, nmap)  usando Chef
5. Configurar dos máquinas virtuales para instalar Apache y Mysql  usando Chef
6. Crear y configurar una máquina virtual usando un libro de cocina desde Opscode
