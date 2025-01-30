#!/bin/bash


seleccionar_producto(){

    # Función que imprime todos los productos disponibles junto con sus precios, accediendo a productos/, para que el cliente seleccione uno

    echo ""
    echo "Menú de la cafetería"

    array_productos=($(ls productos/)) # Crea un array con el nombre de cada fichero en productos/
    i=0

    while [ $i -lt ${#array_productos[@]} ]; do

        echo "${array_productos[$i]}:" "$(cat productos/${array_productos[$i]})€"
        i=$(($i+1))

    done
    

    # SOLUCIÓN DEL EJERCICIO 13 (como el ejercicio 13 y 14 trabajan sobre el mismo bucle, la solución del 13 tiene que estar comentada)
    # for (( i=0; i<${#array_productos[@]}; i++ )); do
    #
    #     echo "${array_productos[$i]}:" "$(cat productos/${array_productos[$i]})€"
    #
    # done

    echo ""
    echo "¿Qué producto quieres comprar? (escribe el nombre exacto)"

    read opcion_compra # Lee la entrada y la guarda en opcion_compra

    if [ -z "$opcion_compra" ]; then

        echo "user_utils.sh: Error, proporciona una entrada no vacía"

    else

        producto_comprado=$(find productos/$opcion_compra 2> /dev/null) # Descarta el error si lo hay (no se imprime). No necesitamos que se imprima el error si lo tratamos (en el siguiente if)
        if [ -z "$producto_comprado" ]; then # Si el resultado de find está vacío (no existe el fichero)

            echo "cafeteria.sh: Error, no existe ese producto"

        else # Si el fichero existe

            echo "Marchando: $opcion_compra"
            registrar_compra "$opcion_compra" "$(cat productos/$opcion_compra)" # Registra la compra, con el nombre y el precio del producto como parámetro
            
        fi
    fi
}


registrar_compra(){

    # Crea un fichero con los datos de la compra realizada por el usuario
    #   PARÁMETRO 1: Nombre del producto comprado
    #   PARÁMETRO 2: Precio del producto comprado

    numero_aleatorio=$(((RANDOM%(1000+1)))) # Se le asigna a la variable un número aleatorio mediante la variable de entorno RANDOM
    nombre_fichero="compra_$numero_aleatorio"
    touch compras/$nombre_fichero # Crea el fichero

    datos=($1 $2 "$(date)" $(whoami))
    # [0]: Nombre del producto
    # [1]: Precio del producto
    # [2]: Salida del comando date (entre comillas porque como hay espacios, si no ponemos comillas cada palabra de date sería un elemento más)
    # [3]: Salida del comando whoami (nombre de usuario)

    # Añade los datos
    echo "Usuario: ${datos[3]}" >> compras/$nombre_fichero 
    echo "Producto: ${datos[0]}" >> compras/$nombre_fichero
    echo "Precio: ${datos[1]}" >> compras/$nombre_fichero
    echo "Fecha: ${datos[2]}" >> compras/$nombre_fichero
}



seleccionar_producto_aleatoriamente(){

    # Función que selecciona un producto aleatoriamente para la compra del cliente

    array_productos=($(ls productos/)) # Crea un array con el nombre de cada fichero en productos/

    indice_aleatorio=$(((RANDOM%(${#array_productos[@]})))) # Genera un número aleatorio entre 0 y el tamaño del array
    producto_aleatorio=${array_productos[$indice_aleatorio]} # Obtiene el producto del array con el índice aleatorio

    echo "Compra aleatoria"
    echo "Marchando: $producto_aleatorio"
    registrar_compra $producto_aleatorio $(cat productos/$producto_aleatorio) # Registra la compra, con el nombre y el precio del producto como parámetro
}
