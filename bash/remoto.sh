# script en el servidor remoto#
###############################

# notar que no se abre una sesión interactiva
# en cuanto termina el script se termina la sesión

ssh usuario@dominio.com ruta-remota/script.sh

# los flujos se conectan hacía el shell local así que...
# la redirección de flujos hace referencia a los directorios locales

ssh usuario@dominio.com ruta-remota/script.sh > ruta-local/salida

# si se quisiera que la redirección afectara de forma remota:

ssh usuario@dominio.com bash -c 'ruta-remota/script.sh > ruta-remota/salida'

# si el script remoto recibe parámetros:

ssh usuario@dominio.com ruta-remota/script.sh param1 param2...paramN

# si recibe parámetros y además se quiere hacer redirección remota

ssh usuario@dominio.com bash -c 'ruta-remota/script.sh param1 param2...paramN > ruta-remota/salida'

# con la opción -c es mejor usar comillas simples
# si quieres expandir una variable local, mejor has concatenaciones adecuadas

ssh usuario@dominio.com bash -c 'ruta-remota/script.sh '"$var"' > ruta-remota/salida'

# script local#
###############

# No requiere copiar archivos al servidor remoto
# Se usa la opción -s para que bash lea comandos de entrada estándar
# Como ssh conecta los flujos locales y remotos se puede pasar el contenido de un script local

ssh usuario@dominio.com bash -s < ruta-local/scriptLocal.sh param1 param2...paramN

# Una desventaja es que la redirección de flujos ya sólo se puede hacer local (no se puede con bash -c)
# Si deseas que haya redirección remota, deberás ponerla de forma explícita dentro del script

ssh usuario@dominio.com bash -s < ruta-local/scriptLocal.sh param1 param2...paramN > ruta-local/salida
