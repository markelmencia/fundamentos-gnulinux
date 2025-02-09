# Ejercicios de funciones
En estos ejercicios se trabajará en la creación de funciones

## Ficheros
- `cafeteria.sh`
- `utils/user_utils`

> Consejo: Estos ejercicios van a requerir un conocimiento general. Si no te ves muy apto o apta para hacerlos, quizá sea una buena idea repasar los ejercicios que has hecho esta ahora.

## Ejercicios
### Ejercicio 15 (`utils/user_utils.sh`)
En **seleccionar_producto()**, al final de la función, una vez que el cliente ha seleccionado un producto para comprar, se llama a la función **registrar_compra()** para, valga la redundancia, registrar la compra. Sin embargo, **le faltan los argumentos** a la llamada de la función. **Infórmate** de qué tienen que ser estos argumentos y **proporciónalos a la llamada**

### Ejercicio 16 (`utils/user_utils.sh`, `cafeteria.sh`)
Al seleccionar la **opción 0** al ejecutar `cafeteria.sh`, se muestra el menú y el cliente puede elegir qué producto desea comprar. Para este ejercicio, vas a tener que aplicar un conocimiento más general de lo que has aprendido y diseñar una función entera. Nos han pedido diseñar una función que nos permita con la que podamos **comprar un producto aleatoriamente**. En vez de mostrar el menú al cliente para que éste elija el producto, se seleccionará un producto aleatorio y se registrará la compra. **Diseña esta función** en `utils/user_utils.sh`, y escribe el código necesario para que se ejecute correctamente en `cafeteria.sh` junto con todo lo demás (Es posible que para esto tengas que pedirle entrada al usuario para seleccionar si quiere comprar un producto manualmente o aleatoriamente).