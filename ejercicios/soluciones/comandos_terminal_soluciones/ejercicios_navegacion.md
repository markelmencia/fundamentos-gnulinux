# Ejercicios de navegación en terminal
En estos ejercicios se trabajarán comandos que nos ayudan a **conocer y navegar** por entornos de ficheros.

## Comandos a utilizar
- `cd`
- `ls`

> Consejo: No acordarse de las opciones que tiene un comando es normal. Si lo necesitas, consulta la documentación del comando en cuestión con ´man <comando>´.

## Ejercicios
### Ejercicio 1
**Accede al directorio `cafeteria/` de forma absoluta.**

(Asumiendo que has descargado el repositorio en tu directorio de usuario)
`$ cd /home/<tu_usuario>/0xdeusto-gnulinux/ejercicios/ejercicios_cafeteria/cafeteria`

### Ejercicio 2
**Accede a `/bin/` de forma absoluta, y desde ahí accede a `cafeteria/` de forma relativa.**

`$ cd /bin` (nos movemos a /bin)
`$ cd ../home/<tu_usuario>/0xdeusto-gnulinux/ejercicios/ejercicios_cafeteria/cafeteria` (desde ahí, accedemos a cafeteria/)

### Ejercicio 3
**Accede a `cafeteria/productos` de forma absoluta, y desde ahí accede `cafeteria/` de forma relativa.**

`$ cd /home/<tu_usuario>/0xdeusto-gnulinux/ejercicios/ejercicios_cafeteria/cafeteria/productos`
`$ cd ..` (vamos al directorio anterior)

### Ejercicio 4
**Acabamos de recibir el programa de la cafetería, junto con su entorno de ficheros. Como no conocemos el programa, primero que nada nos interesa conocer el entorno de ficheros. ¿Qué comando podríamos utilizar para esto? Como el entorno tiene directorios dentro de otros directorios, ¿se te ocurre alguna forma de imprimir el contenido de cada uno de éstos en un solo comando, recursivamente?**

`$ ls -R ~/0xdeusto-gnulinux/ejercicios/ejercicios_cafeteria/cafeteria` (también se puede hacer de forma relativa, mientras que se acceda primero a cafeteria/)

### Ejercicio 5
**Ahora que conocemos mejor el entorno de ficheros, por si acaso, se nos ocurre consultar si existe algún fichero oculto en `cafeteria/`. ¿Qué comando y opción utilizamos para esto?**

`$ ls -a ~/0xdeusto-gnulinux/ejercicios/ejercicios_cafeteria/cafeteria` (-a nos permite listar los ficheros ocultos)

### Ejercicio 6
**Para terminar, queremos consultar los permisos del fichero `cafeteria.sh`. ¿Cómo lo hacemos?**

`$ ls -l ~/0xdeusto-gnulinux/ejercicios/ejercicios_cafeteria/cafeteria/cafeteria.sh` 