# Validar mínimo 3 parámetros
test $# -eq 3 || { echo "No pasaste 3 parámetros"; exit 1; }

# Recorrer todos los parámetros
# Notar que se necitan entre comillas dobles
for param in "$@"; do
    echo "$param";
done

ls /tmp /home
echo $_ # imprime /home

# Matar proceso en background
firefox https://uv.mx &
f_pid=$!
sleep 5
kill $f_pid
