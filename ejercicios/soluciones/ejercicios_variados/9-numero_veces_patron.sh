#!/bin/bash

numero_veces_patron(){
    fichero=$1
    patron=$2

    coincidencias=($(cat $fichero | grep $patron))

    return ${#coincidencias[@]} # Devolvemos cuántos elementos tiene el array (cuántas palabras)
}

numero_veces_patron fichero patron
echo $?

