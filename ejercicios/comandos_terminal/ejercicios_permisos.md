# Ejercicios de permisos de ficheros
En estos ejercicios se trabajarán comandos para modificar los permisos de un fichero

## Comandos a utilizar
- `chmod`

> Consejo: No es del todo necesario, pero a veces resulta conveniente "memorizarse" algunos códigos en notación octal, ya que es la notación más rápida. Uno de los códigos más usados es 755, que le da todos los permisos al propietario/a del fichero y permisos de ejecución y lectura a los demás.

## Ejercicios
### Ejercicio 17
Si has intentado ejecutar `cafeteria/cafeteria.sh`, te habrás dado cuenta de que no puedes. Esto se debe a que no tienes permisos. **Cambia los permisos** de `cafeteria.sh` usando la **notación octal** para que **todos tengan permiso de lectura y ejecución**, y que **el propietario/a y su grupo también tengan permiso de escritura**.

### Ejercicio 18
Mediante la notación simbólica, **elimina los permisos de edición del grupo del propietario/a**.

### Ejercicio 19
Sería conveniente que los clientes (los usuarios que no son ni el propietario/a ni forman parte de su grupo (los admins)) no pudieran modificar los precios de los productos. **Elimina los permisos de edición de los productos a los clientes**.

### Ejercicio 20
Para terminar, **comprueba** que todos los permisos de los ficheros de los ejercicios han sido modificados correctamente. Corrige los errores encontrados.