#!/bin/bash

fact(){
    n=$1 # Valor del argumento que recibimos
    result=1
    for (( i=1; i<=$n; i++ )) { # Iteramos desde 1 hasta n

        result=$((result*$i)) # Por cada iteración, multiplicamos el índice en result
    
    }

    return $result
}

fact 5
echo $?
