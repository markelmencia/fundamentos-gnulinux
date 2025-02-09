# Ejercicios de variables
En estos ejercicios se trabajará la definición correcta de variables, sus diferentes tipos y los argumentos

## Ficheros
- `utils/admin_utils.sh`
- `utils/user_utils.sh`

> Consejo: No vas a poder resolver todas tus dudas usando `man`. A veces, buscar en internet algo que no sabes hacer te resolverá la duda muy rápidamente. Es importante saber buscar información bien en internet.

## Ejercicios
### Ejercicio 1 (`utils/admin_utils.sh`)
Fíjate en la función **añadir_producto()**. Según la documentanción en comentarios, esta función recibe **dos parámetros**, un nombre y un precio. Con esos datos, esta función crea un producto. Viendo el código, te darás cuenta de que existen las variables `nombre_producto` y `precio_producto`. Sin embargo, éstas no están definidas. **Define ambas variables para que almacenen el valor del parámetro 1 y 2, respectivamente.**

### Ejercicio 2 (`utils/user_utils.sh`)
En la función **registrar_compra()** se genera una compra en base a unos datos. El nombre del fichero que registra la compra contiene un código generado aleatoriamente. Linux nos ofrece una forma muy sencilla de generar números aleatorios en bash, ¿se te ocurre cómo? Define la variable `numero_aleatorio` para que almacene un número aleatorio.

### Ejercicio 3 (`utils/admin_utils.sh`)
La función **registrar_compra()** no funciona correctamente. Solamente leyendo el código, ¿se te ocurre por qué? Encuentra el error o errores y corrígelos.