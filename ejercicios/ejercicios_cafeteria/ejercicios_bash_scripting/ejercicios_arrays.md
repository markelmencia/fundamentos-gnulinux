# Ejercicios de arrays
En estos ejercicios se trabajará el uso de arrays.

## Ficheros
- `utils/user_utils.sh`
- `utils/admin_utils.sh`

> Consejo: Recuerda que los arrays de bash son un poco peculiares. En vez de separar sus elementos por comas, se separan por espacios. Esto es algo importante que tenemos que tener en cuenta para estos ejercicios.

## Ejercicios
### Ejercicio 7 (`utils/user_utils.sh`)
La función **registrar_compra()** crea un fichero que registra la compra de un cliente. Para ello, se escribe en el fichero los siguientes datos de la compra: El usuario que ha realizado la compra, el nombre del producto, su precio y la fecha. Para hacer esto, nos piden que creemos un array en el que, de los indices 0 al 3, asignemos respectivamente los datos mencionados. **Crea un array** y en él **inserta** los datos.

### Ejercicio 8 (`utils/user_utils.sh`)
Ahora que tenemos el array creado, nos interesa **escribir los datos** en el fichero creado por el comando ´touch´. Redireccionando la salida del comando `echo`, **escribe en el fichero cada elemento del array**, para que el fichero acabe con cuatro líneas, una por cada elemento del array de datos.

### Ejercicio 9 (`utils/user_utils.sh`)
En **seleccionar_producto()**, para imprimir todos los productos, la idea es almacenar en un array el nombre de cada producto para luego iterar sobre ese array en imprimir el producto junto con su precio. Pero como podemos ver, la variable `array_productos`no está definida. **Defínela** para que en ella tenga **los nombres de los productos** en `productos/`. Como pista, piensa en cómo obtendrías el nombre de los productos que existen en la **linea de comandos**

### Ejercicio 10 (`utils/admin_utils.sh`)
Para consultar las compras totales en **consultar_compras_totales** utilizamos un bucle que itera por cada compra y va incrementando un contador. Pero, ¿se te ocurre una forma más simple de solucionar este problema con alguna **funcionalidad de los arrays**?