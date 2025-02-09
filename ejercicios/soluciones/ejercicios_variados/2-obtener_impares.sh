#!/bin/bash

obtener_impares(){
    numeros=($@) # De esta manera almacenamos todos los números del array que recibimos

    for numero in ${numeros[@]}; do # Iteramos el array

        if ! [ $(($numero%2)) -eq 0 ]; then # Si el número NO es par...

            echo $numero # Imrpimimos el número

        fi

    done
}

array_numeros=(1 2 3 4 5)
obtener_impares ${array_numeros[@]}
