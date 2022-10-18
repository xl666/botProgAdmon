# Filtrar archivos con extensión sh
ls | grep -E "\.sh$" # hay que escapar el . para que sea literal

# Filtrar archivos con extensión txt o tex
ls | grep -E "(\.txt$)|(\.tex$)" 

# Sólo usuarios de /etc/passwd
cat /etc/passwd | grep -Eo "^[a-zA-Z0-9]+"

#Otra forma
cat /etc/passwd | grep -Eo "^[^:]+"

# Sólo interfaces de red ip link show
ip link show | grep -Po "^[0-9]+: \K([a-zA-Z0-9]+)"

# capturar ips en salida de ifconfig
ifconfig | grep -Eo "([0-9]{1,3}\.){3}[0-9]{1,3}"

# Nombre de archivo sin la extensión
# Notar comportamiento greedy
echo alum.nos.txt | grep -Po ".+(?=\..+)"

# Validar que parámetro 1 es un número entre 0 y 99
# Mejor poner siempre ^ y $ para no hacer match con subcadena
[[ "$1" =~ ^[0-9][0-9]?$ ]] || echo "no está entre 0 y 99"

# Dirección ip de una interfaz dada
interfaz=enp2s0f0
lineaInter=$(ifconfig | cat -n | grep -E $interfaz | grep -Po "^[ ]+\K[0-9]+")
let lineaIP=lineaInter+1
ifconfig | head -n $lineaIP | tail -n 1 | grep -Eo "([0-9]{1,3}\.){3}[0-9]{1,3}" | head -n 1
