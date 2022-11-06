# Ver información de procesos

top/htop # monitor de procesos
ps # ver los procesos en ejecución del shell actual
ps -ef # ver todos los procesos en ejecución del sistema
ps -u usuario # ver procesos de un usuario
ps -C comando # ver procesos relacionados con algún programa
ps –forest # opción para ver relaciones de padres e hijos entre procesos
ps aux –sort pmem # ordenar procesos por consumo de memoria
pgrep -l expr # muestra el PID y el nombre de los procesos cuyo CMD haga match con expr

# No depender del shell actual, muy útil en shells remotos:
nohup mi-script.sh  &

# Si te vas a desconectar del shell:
nohup mi-script.sh  & > /ruta/out.txt 2> /ruta/error.txt

# Mandar señales y matar procesos

kill PID # Matar proceso (SIGTERM)
kill -l # ver las señales que se pueden mandar
kill -s señal PID 
killall cmd_proceso # mata (SIGTERM) todos los procesos con el CMD dado
killall -s señal cmd_proceso # también se puede mandar otra señal
pkill regexp # Mata procesos (SIGTERM) cuyo CMD hace match con regexp (se puede usar --signal)

# Cachar una señal desde un script usando comando trap
# trap funcion señales... (se ejecuta la función cuando se reciben las señales)

function noHacerNada () {
    echo "No voy a terminar..."
}

trap noHacerNada SIGINT SIGTERM
