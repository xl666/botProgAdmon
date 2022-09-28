test CONDICION

# Modificadores para archivos
[ -a FILE ] # Verdadero si el archivo o directorio existen
[ -d FILE ] # Verdadero si el archivo existe y es un directorio
[ -f FILE ] # Verdadero si existe y es un archivo normal
[ -r FILE ] # Verdadero si existe el archivo y se puede leer
[ -s FILE ] # Verdadero si existe y su tamaño es mayor a 0
[ -w FILE ] # Verdadero si existe y se puede escribir
[ -x FILE ] # Verdadero si existe y se puede ejecutar

# Modificadores para cadenas
[ -z STRING] # Verdadero si la longitud de la cadena es 0
[ -n STRING ] # Verdadero si la longitud de la cadena no es 0
[ STRING ] # Verdadero si la longitud de la cadena no es 0
[ STRING1 == STRING2 ] # Verdadero si las dos cadenas son iguales
[ STRING1 != STRING2 ] # Verdadero si las dos cadenas son diferentes
[ STRING1 < STRING2 ] # Verdadero si la primera cadena es menor (no usar)
[ STRING1 > STRING2 ] # Verdadero si la primera cadena es mayor (no usar)

# Modificadores para números
[ NUM1 -eq  NUM2 ] # Verdadero si los dos números son iguales
[ NUM1 -ne  NUM2 ] # Verdadero si los dos números son diferentes
[ NUM1 -lt  NUM2 ] # Verdadero si NUM1 es menor a NUM2"
[ NUM1 -gt  NUM2 ] # Verdadero si NUM1 es mayor a NUM2"
[ NUM1 -le  NUM2 ] # Verdadero si NUM1 es menor o igual a NUM2"
[ NUM1 -ge  NUM2 ] # Verdadero si NUM1 es mayor o igal a NUM2"

# Los siguientes 3 comandos hacen lo mismo
test -f "$archivo"
[ -f "$archivo" ]
[[ -f "$archivo" ]]




