#!/bin/bash

sustituir_array(){
    array=($@) # Recibimos el array
    # NOTA: Para este ejercicio no podemos usar el for para arrays, tenemos que usar el "clásico"
    # porque necesitamos conocer el índice numérico del elemento de cada iteración
    for (( i=0; i<${#array[@]}; i++ )); do
        echo ${array[$i]}
        if [ "${array[$i]}" == "a" ] || [[ "${array[$i]}" == "A" ]]; then

            array[$i]="4"

        fi

        if [ "${array[$i]}" == "e" ] || [ "${array[$i]}" == "E" ]; then

            array[$i]="3"

        fi

    done

    echo ${array[@]}

}

array_numeros=('a' 'r' 'e' 'n' 'a')
sustituir_array ${array_numeros[@]}
