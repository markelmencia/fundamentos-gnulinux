#!/bin/bash

eliminar_vacios() {
    directorio=$1

    elementos=($(ls $directorio)) # Almacena en un array todos los elementos

    for elemento in ${elementos[@]}; do

        if [ -f $directorio/$elemento ]; then # Con -f se comprueba si el elemento es un fichero (realmente esta condición no es estríctamente necesaria)

            contenido="$(cat $directorio/$elemento)" # Obtenemos en forma de string (porque está entre comillas) el contenido de cada fichero
            if [ "$contenido" == "" ]; then # Si el contenido no tiene nada...

                rm $directorio/$elemento # Lo eliminamos

            fi

        fi
      
    done
}

eliminar_vacios directorio

