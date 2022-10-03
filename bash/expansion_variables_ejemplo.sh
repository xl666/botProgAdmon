# Quitar ambiguedad
var=miValor
vars=valores
echo "Tantos ${var}s" # se expande var y no vars

# Sacar sólo extensión de archivo, no usar
ar="hola.txt"
echo ${ar#*.}
# Mejor usar esta
ar="/tmp/dir.otro/sub/f.hola.txt"
echo ${ar##*.}

# Ruta de directorios donde está un archivo
ar="/tmp/dir.otro/sub/f.hola.txt"
echo ${ar%/*}
# Esta otra te borra todo, no usar
ar="/tmp/dir.otro/sub/f.hola.txt"
echo ${ar%%/*}

# Cambiar una extensión por otra
ar="/tmp/dir.otro/sub/f.hola.txt"
echo ${ar/%.txt/.jpg}
# Mejor nunca uses remplazos con operador /, son greedy
# Por ejemplo lo siguiente no se comporta como esperamos
ar="/tmp/dir.otro/sub/f.hola.txt"
echo ${ar/%.*/.jpg} # da como resultado /tmp/dir.jpg
# Mejor combina con borrado simple y concatenación:
ar="/tmp/dir.otro/sub/f.hola.txt"
echo ${ar%.*}.jpg

# Longitud de cadena
cad=hola
echo ${#cad} # imprime 4

# Rebanadas
cad=hola-mundo
echo ${cad:5} # imprime mundo
echo ${cad:0:4} # imprime hola
echo ${cad:0: -6} # imprime hola, notar espacio

# Mayúsuclas minúsculas
cad="HOLA a todos HOLA"
echo ${cad,} # imprime hOLA a todos HOLA
echo ${cad,,} # imprime hola a todos hola
echo ${cad^^} # imprime HOLA A TODOS HOLA
