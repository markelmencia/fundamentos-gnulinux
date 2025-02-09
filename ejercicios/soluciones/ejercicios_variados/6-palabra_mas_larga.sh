#!/bin/bash

palabra_mas_larga(){
    array=($@) # Recibimos el array
    max="" # Creamos la variable donde almacenamos la palabra mas larga
    for palabra in ${array[@]}; do

        if [ ${#palabra} -ge ${#max} ]; then # Si la longitud de la palabra es mayor o igual al que tenemos almacenado...

            max=$palabra # Cambiamos max al número de la interación

        fi

    done
    
    echo $max

}

array_numeros=("hola" "adios" "chocolate" "agua")
palabra_mas_larga ${array_numeros[@]}

