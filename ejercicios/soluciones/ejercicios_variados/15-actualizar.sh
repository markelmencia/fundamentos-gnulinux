#!/bin/bash

# Para Ubuntu y derivados
actualizar-apt() {
    sudo apt-get update
}


# Para Arch Linux y derivados
actualizar_pacman() {
    sudo pacman -Syu
}


# Para distribuciones Red Hat
actualizar_yum() {
    sudo yum update
}

