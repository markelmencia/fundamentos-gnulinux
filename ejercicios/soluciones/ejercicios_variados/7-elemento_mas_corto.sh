#!/bin/bash

elemento_mas_corto(){
    array=($(ls /home/usuario)) # Mediante ls, obtenemos un array con cada elemento en ~
    num_min=100000 # Inicializamos un valor muy alto que hará de "cantidad de caracteres máxima"
    min="" # Inicializamos una variable donde almacenaremos el nombre del elemento mínimo
    for elemento in ${array[@]}; do

        if [ ${#elemento} -le $num_min ]; then # Si la longitud del nombre del fichero es menor a la mínima almacenada

            
            num_min=${#elemento}
            min=$elemento

        fi

    done
    
    echo $min

}

elemento_mas_corto

