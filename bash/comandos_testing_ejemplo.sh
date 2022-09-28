test -d "/tmp" && echo "Es un directorio"

valor=12
test 45 -lt $valor || echo "No es menor"

test $noExiste || echo "No existe la variable"

# Dos formas de hacer lo mismo
# Notar que con [[ se pueden combinar conectores lógicos
ar="/tmp/hola.txt"
if test -d "$ar" || test -f "$ar"; then
    echo "Es un directorio o un archivo";
fi
if [[ -d "$ar" || -f "$ar" ]]; then
    echo "Es un directorio o un archivo";
fi

# Negación
test ! 66 -gt 344 && echo "66 no es mayor que 344"
