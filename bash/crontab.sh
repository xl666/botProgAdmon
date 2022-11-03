# Formato básico
"* * * * *" script

# El orden de los elementos es:
# minutos, horas, día del mes, mes, día de la semana

# Operadores especiales
# * significa cualquier valor o un valor por defecto neutral
# , significa and: * 0,12 * * * (todos los días a las 0 y 12 horas)
# - significa rango: * * * * 1-5 (entre semana a las 0 horas)
# / significa cada: */10 * * * (cada 10 minutos)

# Etiquetas especiales
@yearly # igual a 0 0 1 1 *
@daily # igual a 0 0 * * *
@hourly # igual a 0 * * * *
@reboot # ejecutar tarea cuando se inicia el sistema
