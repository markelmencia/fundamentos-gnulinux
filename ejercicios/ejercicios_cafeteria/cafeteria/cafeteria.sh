#!/bin/bash
source utils/user_utils.sh
source utils/admin_utils.sh

echo ""
echo "+----------------------------+"
echo "| Bienvenid@ a la cafetería! |"
echo "+----------------------------+"
echo ""
echo "¿Qué deseas hacer hoy?"
echo "- 0) Comprar"
echo "- 1) Soy admin"

read opcion_accion # Lee la entrada y la guarda en opcion_accion

if [ $opcion_accion -eq 0 ]; then # El usuario quiere comprar

    # EJERCICIO 16: Escribe el código necesario para que se ejecute bien la función que has diseñado

    seleccionar_producto # Función en user_utils.sh

elif [ $opcion_accion -eq 1 ]; then # El usuario quiere hacer ajustes de administrador

    verificar_contraseña # Función en admin_utils.sh
    resultado_verificacion=$? # Guarda el valor devuelto por verificar_contraseña()

    if [ $resultado_verificacion -eq 1 ]; then # Si el valor es true (la contraseña introducida es correcta)
        acciones_admin # Abre un menú para seleccionar la acción que quiere ejecutar el admin (función en admin_utils.sh)
    fi

else

    echo "cafeteria.sh: Error, opción inválida"

fi

