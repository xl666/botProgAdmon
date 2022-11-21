# cifrar archivo, notar que se remplaza archivo original
ccencrypt /ruta/archivo
ccrypt -e /ruta/archivo

# descifrar archivo, notar que se recupera archivo original
ccdecrypt /runta/archivo
ccrypt -d /runta/archivo

# cifrar/descifrar directorios recursivamente
ccrypt -r ...

# descifrar hacía stdout (no remplaza archivo cifrado)
# opción muy útil para scripting
plano=$(ccrypt -d -c /ruta/archivo)
