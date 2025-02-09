#!/bin/bash

cantidad_palabras_fichero(){
    array=($(cat $1)) # Leemos el fichero y almacenamos el texto separado por espacios como array
    return ${#array} # Devolvemos cuántos elementos tiene el array (cuántas palabras)
}

cantidad_palabras_fichero direccion/del/fichero
echo $?

