#!/bin/bash

buscar_sin_find() {
    directorio=$1
    fichero=$2

    ls $directorio | grep $fichero
}

buscar_sin_find directorio fichero