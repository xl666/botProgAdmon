# Si se invoca un script así desde la línea de comandos
# Notar el efecto del quoting
miScript hola mundo mundial "otra cosa"
# Desde el script la correspondencia de variables y valores es así
$1 # hola
$2 # mundo
$3 # mundial
$4 # otra cosa

# Lo siguiente no hace nada, los parámetros son constantes
1="No pasa nada"
echo $1 # valor original

# Se puede expandir a ruta absoluta la ruta del script
absoluta=$(realpath "$0")

# El globbing genera múltiples parámetros, no sólo uno
# Desde la línea de comandos:
miScript.sh /tmp/*
# Desde el script:
$1 # primer archivo de /tmp
$2 # segundo archivo de /tmp
$3 # tercer archivo de /tmp
# Y así sucesivamente...
