# Ejemplo de script interactivo preguntas.sh

#!/usr/bin/env bash

echo "Cuál es tu nombre?"
read nombre
echo "Cuántos años tienes?"
read edad
echo "Cuál es tu color favorito?"
read color

echo "Eres $nombre, tienes $edad y tu color favorito es $color"

# Este es el script de expect para automatizar

#!/usr/bin/expect

set timeout -1
spawn ./preguntas.sh
match_max 100000

expect -re "nombre"
send "pepito\r"
expect -re "años"
send "20\r"
expect -re "color"
send "rojo\r"
expect eof

# Este es el mismo script de except pero usando parámetros

#!/usr/bin/expect

set nombre [lindex $argv 0]
set edad [lindex $argv 1]
set color [lindex $argv 2]

set timeout -1
spawn ./preguntas.sh
match_max 100000

expect -re "nombre"
send "$nombre\r"
expect -re "años"
send "$edad\r"
expect -re "color"
send "$color\r"
expect eof

# Inyección de contraseña ssh
# script ejecutar_remoto.sh

#!/usr/bin/env bash

usuario="$1"
host="$2"
puerto="$3"

ssh ${usuario}@${host} -p $puerto bash -s < script.sh 

# Lado de expect

#!/usr/bin/expect -f

set usuario [lindex $argv 0]
set host [lindex $argv 1]
set puerto [lindex $argv 2]
set password [lindex $argv 3] ;# nunca hacer esto, se necesita cifrado

set force_conservative 0
if {$force_conservative}
   {
       set send_slow {1 .1}
       proc send {ignore arg} {
	   sleep .1
	   exp_send -s -- $arg
       }
   }
set timeout -1
spawn ./ejecutarRemoto.sh $usuario $host $puerto
match_max 100000
expect -re "password:"
send -- "$password\r"
expect eof
