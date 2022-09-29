function contar_archivos {
    local ruta="$1";
    local res=0;
    for archivo in "$ruta"/*; do
	if test -f "$archivo"; then
	    let res=res+1;
	fi
    done
    echo $res
}
contar_archivos "/tmp"

# return para funciones booleanas
function tiene_txts {
    local ruta="$1";
    ls "$ruta" | grep "\.txt$" && return 0 || return 1
}
if tiene_txts "/tmp"; then
    echo "El directorio tiene achivos txt"
else
    echo "El directorio no tiene archivos txt"
fi
