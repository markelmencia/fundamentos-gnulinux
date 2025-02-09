#!/bin/bash

copiar_extensiones() {
    origen=$1
    destino=$2
    extension=$3
    

    cp $origen/*.$extension $destino
}

copiar_extensiones origen destino extension

