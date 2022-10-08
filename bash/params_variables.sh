# Recorrer todos los parámetros
# Notar que se necitan entre comillas dobles
for param in "$@"; do
    echo $param
done

# Obtener último parámetro, notar doble comilla
params=( "$@" )
echo ${params[@]: -1}

# Recorrer todos menos el último
params=( "$@" )
longitud=${#params[@]}
let conteo=longitud-1
for param in ${params[@]:0:conteo}; do
    echo "$param";
done
