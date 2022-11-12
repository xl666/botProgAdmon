# Cachar una señal desde un script usando comando trap
# trap funcion señales... (se ejecuta la función cuando se reciben las señales)

function noHacerNada () {
    echo "No voy a terminar..."
}

trap noHacerNada SIGINT SIGTERM

# Un ejemplo más largo...

# Script que manda la señal
#!/usr/bin/env bash

./script_que_atrapa.sh &
pid_trabajador=$!

sleep 1 # dar tiempo a que se registre el trap en trabajador
kill -s SIGUSR2 $pid_trabajador

# Script que recibe la señal
#!/usr/bin/env bash

function escribir {
    echo "hola" >> /tmp/hola
}

trap escribir SIGUSR2

sleep 60000 & # si no es segundo plano no se pueden atrapar señales
wait # opcional, esperar a que procesos hijo cambien de estado
