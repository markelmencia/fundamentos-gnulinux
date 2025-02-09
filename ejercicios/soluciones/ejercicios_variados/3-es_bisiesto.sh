#!/bin/bash

es_visiesto(){
    anyo=$1 # Recibimos el año como argumento
    result=0 # Valor "booleano" que devolvemos, inicializado en falso (0)

     # El año es divisible entre 400
    if [ $(($anyo%400)) -eq 0 ]; then

        result=1

    else # O...

        # El año no es divisible entre 100 y sí divisible entre 4
        if ! [ $(($anyo%100)) -eq 0 ] & [ $(($anyo%4)) -eq 0 ]  ; then

            result=1

        fi

    fi

    return $result

}

array_numeros=2012
es_visiesto $array_numeros
echo $?
