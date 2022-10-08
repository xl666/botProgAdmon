# Rrear arreglo, notar espacios
arreglo=( elemento1 "elemento 2" elementoN )

# Regresar elemento en posicion 0
echo "$arreglo"

# Regresar elemento en alguna posición
echo " ${arreglo[1]} "

# Regresar todos los elementos, útil para for
echo " ${arreglo[@]} "

# Longitud del arreglo
echo ${#arreglo[@]}

# Asignar una posición
arreglo[1]="nuevo"

# Agregar elemento al final
arreglo+=( elemento )

# Generar elementos con globbing
arreglo=( *.txt )

# Hacer una copia completa de un arreglo
copia=( ${arreglo[@]} )

# Borrar un elemento
# CUIDADO no usar, tiene comportamiento inconsistente
unset arreglo[2]

# Rebanadas
# Síntaxis: ${arreglo[@]:posición:cuántos}
# cúantos es opcional, por defecto todo el resto
# Se pueden usar números negativos en posición
# Ejemplos:

# Todos los elementos
${arreglo[@]:0}

# Sólo el último elemento, notar espacio
${arreglo[@]: -1}

# Sólo penúltimo elemento
${arreglo[@]: -2:1}

# Todos menos el último elemento
longitud=${#arreglo[@]}
let cuantos=longitud-1
${arreglo[@]:0:$cuantos}

# Todos menos el primero
${arreglo[@]:1}
