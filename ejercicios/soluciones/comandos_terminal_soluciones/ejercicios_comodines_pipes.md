# Ejercicios de comodines de texto y pipes
En estos ejercicios se trabajarán formas de usar comodines de texto y diferentes usos de la redirección y el pipelining.

## Comandos a utilizar
- `grep`
- `ls`
- `echo`
- `touch`

> Consejo: Es buena práctica prestar especial atención a los comandos en los que utilizamos comodines de texto. Al estar trabajando con potencialmente varios ficheros, los cambios que podemos hacer pueden ser más significantes, lo cual significa que corregirlos, en caso de error, se convierte en una tarea más complicada.

## Ejercicios
### Ejercicio 21
**Nos interesa ver todos los productos que tienen como segunda letra la "a", ya que coincidentalmente, resultan ser todos los cafés de la cafetería. Para realizar este ejercicio, lista el contenido de `productos/` y filtra su salida para obtener los resultados esperados.**

`$ls productos/ | grep ?a*` (lista los ficheros de `productos/` y luego filtra el resultado para imprimir los ficheros que empiecen por cualquier caracter, en el segundo tengan una "a" y continuen de cualquier manera)

### Ejercicio 22
 **Imprime los productos que tengan la letra "s" en su nombre.**

`ls productos/ | grep *s*`
Ten en cuenta que también se puede usar `find productos/*?*`

### Ejercicio 23
**En la tabla del menú de la cafetería del ejercicio 15 (en los ejercicios de lectura y escritura) los precios solo tenían un decimal. Para que el formato siga mejor los euros y los centimos, añade, con un solo comando, un cero a cada precio de cada producto.**

`$ echo -n "0" >> productos/*` (Envía la salida del `echo` ("0") a todos los ficheros en productos/)

### Ejercicio 24
**En `compras/`, crea cinco registros de compra que sigan este formato como nombre de fichero: `compra_n`, donde `n` es el número de la compra. Para ello, usa solo un comando.**

`$ touch compras/compra_{1..5}` 

### Ejercicio 25
**Una vez creados los ficheros, lista solo los registros del 2 al 4.**

`$ ls compras/compra_{2,3,4}`
