# copiar todos los txt
cp /tmp/*txt /tmp/misTxts

# borrar todos los archivos y directorios
rm -r *

# mover todos los archivos jpg y png
mv {*jpg,*png} /tmp

# archivos que comienzan con un un dígito
echo [0-9]*
# otra forma
echo [[:digit:]]*

# archivos cuyo nombre es de longitud 3
echo ???
