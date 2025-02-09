#!/bin/bash

numero_mas_alto(){
    array=($@) # Recibimos el array
    max=-1 # Creamos la variable donde almacenamos el número máximo
    for numero in ${array[@]}; do

        if [ $numero -ge $max ]; then # Si el número es mayor o igual al que tenemos almacenado...

            max=$numero # Cambiamos max al número de la interación

        fi

    done
    
    return $max

}

array_numeros=(1 4 7 5 8 0)
numero_mas_alto ${array_numeros[@]}
echo $?
