#!/bin/bash


seleccionar_producto(){

    # Función que imprime todos los productos disponibles junto con sus precios, accediendo a productos/

     echo ""
    echo "Menú de la cafetería"

    # EJERCICIO 8: Crea un array que contenga el nombre de cada producto
    # EJERCICIO 13: Convierte este bucle en uno que intere sobre índices
    for producto in ${array_productos[@]}; do
        echo "$producto:" "$(cat productos/$producto)€" # Imprime el nombre y precio de cada producto
    done
    # EJERCICIO 14: Al terminar, conviertelo en un bucle while

    echo ""
    echo "¿Qué producto quieres comprar? (escribe el nombre exacto)"

    read opcion_compra # Lee la entrada y la guarda en opcion_compra

    producto_comprado=$(find productos/$opcion_compra 2> /dev/null) # Descarta el error si lo hay (no se imprime). No necesitamos que se imprima el error si lo tratamos (en el siguiente if)
    if [ -z "$producto_comprado" ]; then # Si el resultado de find está vacío (no existe el fichero)

        echo "cafeteria.sh: Error, no existe ese producto"

    else # Si el fichero existe

        echo "Marchando: $opcion_compra"
        registrar_compra # EJERCICIO 15: Proporciona los argumentos necesarios para que se ejecute esta función
        
    fi
}


registrar_compra(){

    # Crea un fichero con los datos de la compra realizada por el usuario
    #   PARÁMETRO 1: Nombre del producto comprado
    #   PARÁMETRO 2: Precio del producto comprado

    # EJERCICIO 2: Define la variable numero_aleatorio para que almacene un número aleatorio

    nombre_fichero="compra_$numero_aleatorio" # Nombre que se le asigna al fichero, con ID aleatoria
    touch compras/$nombre_fichero # Crea el fichero

    # EJERCICIO 6: Crea un array con el nombre de usuario, el nombre del producto comprado, su precio y la fecha como elementos.
    # EJERCICIO 7: Añade los datos al fichero compras/$nombre_fichero

}


# EJERCICIO 16: Diseña una función que le compre al cliente un producto aleatorio