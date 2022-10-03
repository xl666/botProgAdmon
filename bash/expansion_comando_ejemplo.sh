# Asignar salida a variable
usuario=$(whoami)

# Usar como parámetro de otro comando
cp /tmp/miArchivo.txt $(pwd)

# En un for
for usuario in $(cat /etc/passwd); do
    echo "$usuario";
done

# También funciona con funciones
function saludar {
    echo "hola $1";
}
saludo=$(saludar pepe)
