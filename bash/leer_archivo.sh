
# -r lidia con \ poner siempre
while read -r linea; do
    procesar "$linea";
done < "/ruta/archivo_entrada"
