#!/bin/bash


añadir_producto(){

    # Añade un producto a cafeteria/productos/ recibiendo dos parámetros.

    #   PARÁMETRO 1: Nombre del producto (que adopta el nombre del fichero que se crea)
    #   PARÁMETRO 2: Precio del producto (que se escribe en el fichero creado)


    # EJERCICIO 1: Define las variables nombre_producto y precio_producto para que almacenen el valor del parámetro  1 y 2, respectivamente.
    # (responde aquí)

    if [ -z "$nombre_producto" ]; then # Comprueba si no hemos introducido un primer argumento (el nombre del producto)

	    echo añadir_producto: Error, nombre del producto vacío

    elif [ -z "$precio_producto" ]; then # Comprueba si no hemos introducido un segundo argumento (el precio del producto)

	    echo añadir_producto: Error, precio del producto vacío

    else # Este bloque solo se ejecuta si hemos introducido los dos argumentos

	    touch productos/$nombre_producto # Crea el fichero en productos/ con el nombre introducido como parámetro
	    echo $precio_producto >> productos/$nombre_producto # Escribe en el fichero el precio del producto introducido como parámetro
        echo "Producto añadido correctamente"

    fi
}


eliminar_producto() {

    # Elimina un producto (elimina el fichero) de cafetería/productos/ que tenga el nombre del argumento recibido

    if [ -z "$1" ]; then # Comprueba si no se ha introducido un parámetro como nombre

	    echo eliminar_producto: Error, introduce el nombre del producto para eliminarlo

    else # Solo se ejecuta si hemos introducido un parametro

    	rm productos/$1 # Elimina el fichero con el nombre introducido como parámetro
        echo "Producto eliminado correctamente"

    fi 
}


verificar_contraseña() {

    # Pide una contraseña y si es correcta (acceso_admin) devuelve true

    echo "Introduce la contraseña de administración:"
    read contrasena

    if []; then # EJERCICIO 9: Completa el condicional

	    echo "Contraseña correcta"
        return 1 # true

    else # Si la contraseña es incorrecta

    	echo "Contraseña incorrecta"
        return 0 # false

    fi 
}


consultar_compras_totales(){

    total=0
    array_compras=($(ls compras/)) # Crea un array con el nombre de cada fichero en productos/

    for compra in ${array_compras[@]}; do

        total= # EJERCICIO 4: Introduce la operación correcta, EJERCICIO 5: ¿Podría haber otra forma de realizar esta operación con un comando?

    done

    # EJERCICIO 10: Reemplazar esta línea de código por un condicional para imprimir la frase en singular o plural en función del total
    echo "Se han realizado un total de $total compra(s)"

}


acciones_admin(){

    # Función que imprime las acciones que puede hacer un admin, pide una entrada al usuario y las ejecuta

    # EJERCICIO 3: Encuentra el error o errores de esta funcion y corrígelos

    echo ""
    echo "Selecciona una acción a ejecutar:"
    echo "- 0) Añadir producto"
    echo "- 1) Eliminar producto"
    echo "- 2) Consultar total de compras realizadas"

    read opcion_admin # Lee la entrada y la guarda en opcion_admin

    if [ opcion_admin -eq 0 ]; then # El admin elige añadir un producto

        echo ""
        echo "Nombre del producto:"
        read nombre # Lee la entrada y la guarda en nombre

        echo "Precio:"
        read precio # Lee la entrada y la guarda en precio

        añadir_producto $nombre $precio # Ejecuta la función para añadir un producto

    elif [ opcion_admin -eq 1 ]; then # El admin elige eliminar un producto

        echo ""
        echo "Nombre del producto:"
        read nombre # Lee la entrada y la guarda en nombre

        eliminar_producto $nombre # Ejecuta la función para eliminar el producto especificado

    elif [ opcion_admin -eq 2 ]; then # El admin elige consultar el total de compras realizadas

        consultar_compras_totales

    else

        echo "cafeteria.sh: Error, acción de admin inválida"
        
    fi
}
