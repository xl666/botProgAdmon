# Convertir todas las líneas a mayúsculas de la entrada
# Guardar resultado en archivo de salida

archivo_entrada="$1"
archivo_salida="$2"

#borrar contenido de $archivo_salida por si existe
echo "" > "$archivo_salida"

while read -r linea; do
    linea_upper=$(echo "$linea" | tr '[:lower:]' '[:upper:]')
    echo "$linea_upper" >> "$archivo_salida"
done < "$archivo_entrada"
