# Ejercicios de lectura y escritura de ficheros
En estos ejercicios se trabajarán comandos para leer y escribir ficheros.

## Comandos a utilizar
- `cat`
- `nano`

## Ejercicios
### Ejercicio 14
**En esta cafetería, la forma de establecer el precio de un producto es escribiéndolo en el fichero del producto correspondiente. El precio de un café sólo en esta cafetería es de un euro. Mediante un editor de texto, escribe en `cafe_solo` un uno (1).**

Para este ejercicio basta con utilizar tu editor de texto de preferencia, como `nano` (`nano cafe_solo`) y guardar los datos.
También se puede hacer mediante el siguiente comando: `echo "1" > cafe_solo`, en el que escribimos la salida de echo ("1") en `cafe_solo` (si no has leído el apartado de redirección y pipelining ignora esta forma)

### Ejercicio 15
**Nos están pidiendo añadir más productos. Según la siguiente tabla del menu, crea los ficheros correspondientes y escribe en ellos el precio de cada producto, en minúsculas y sustituyendo los espacios por el caracter "_".**

    +----------------+----------------+
    |                                 |
    |            Cafetería            |
    |                                 |
    +----------------+----------------+
    |    Café sólo   |      1.0       |
    +----------------+----------------+ 
    | Café con leche |      1.4       |
    +----------------+----------------+
    |   Capuccino    |      1.5       |
    +----------------+----------------+
    |  Café expresso |      1.7       |
    +----------------+----------------+
    |   Leche sola   |      0.7       |
    +----------------+----------------+
    |    Croissant   |      1.1       |
    +----------------+----------------+
    |  Zumo naranja  |      1.2       |
    +----------------+----------------+

La forma de realizar este ejercicio sigue el mismo modus-operandi que el ejercicio 14, pero en el directorio `productos/`.

### Ejercicio 16
**Una vez creados todos los productos, lee cada fichero para comprobar que los precios de cada producto son los correctos. Si no lo son, haz las correcciones necesarias.**

Pudes imprimir cada fichero mediante `cat productos/<fichero>`. Una forma de imprimir todos los ficheros a la vez es con `cat productos/*` (si no has leído el apartado sobre comodines de texto ignora esta forma)