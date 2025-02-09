#!/bin/bash

es_primo() {
    numero=$1
    result=1 # Asumimos que el número es primo

    # Podemos saber si un número es primo si no hay ningún número entre 2 y la mitad del número que sea divisible con el número
    for ((i=2; i<$(($numero/2)); i++)); do
      
        if [ $(($numero%$i)) -eq 0 ] ; then

            result=0 # El número no es primo

        fi

    done

    return $result
}

es_primo 73
echo $?