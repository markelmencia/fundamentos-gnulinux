#!/bin/bash


seleccionar_producto(){

    # Función que imprime todos los productos disponibles junto con sus precios, accediendo a productos/

    array_productos=($(ls productos/)) # Crea un array con el nombre de cada fichero en productos/

    for producto in ${array_productos[@]}; do
        echo "$producto:" "$(cat productos/$producto)€" # Imprime el nombre y precio de cada producto
    done

    echo ""
    echo "¿Qué producto quieres comprar? (escribe el nombre exacto)"

    read opcion_compra # Lee la entrada y la guarda en opcion_compra

    producto_comprado=$(find productos/$opcion_compra 2> /dev/null) # Descarta el error si lo hay (no se imprime). No necesitamos que se imprima el error si lo tratamos (en el siguiente if)
    if [ -z "$producto_comprado" ]; then # Si el resultado de find está vacío (no existe el fichero)

        echo "cafeteria.sh: Error, no existe ese producto"

    else # Si el fichero existe

        echo "Marchando: $opcion_compra"
        registrar_compra $opcion_compra $(cat productos/$opcion_compra) # Registra la compra, con el nombre y el precio del producto como parámetro
        
    fi
}


registrar_compra(){

    # Crea un fichero con los datos de la compra realizada por el usuario
    #   PARÁMETRO 1: Nombre del producto comprado
    #   PARÁMETRO 2: Precio del producto comprado

    nombre_fichero="compra_$RANDOM" # Nombre que se le asigna al fichero, con ID aleatoria
    nombre_producto=$1 # Nombre del producto
    precio_producto=$2 # Precio del producto
    fecha=$(date) # Salida del comando date almacenada
    usuario=$(whoami) # Salida del comando whoami (devuelve nombre de usuario) almacenada

    ## TODO: esto podría ser un ejercicio >>
    touch compras/$nombre_fichero # Crea el fichero

    # Añade los datos
    echo "Usuario: $usuario" >> compras/$nombre_fichero 
    echo "Producto: $nombre_producto" >> compras/$nombre_fichero
    echo "Precio: $precio_producto" >> compras/$nombre_fichero
    echo "Fecha: $fecha" >> compras/$nombre_fichero
}