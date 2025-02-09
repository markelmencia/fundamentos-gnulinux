#!/bin/bash

# Para Ubuntu y derivados
instalar_paquete_apt() {
    paquete=$1
    sudo apt install $paquete
}


# Para Arch Linux y derivados
instalar_paquete_pacman() {
    paquete=$1
    sudo pacman -S $paquete
}


# Para distribuciones Red Hat
instalar_paquete_yum() {
    paquete=$1
    sudo yum install $paquete
}

