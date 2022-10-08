#!/usr/bin/env bash

arreglo=( manzana mango pera naranja )

# Estilo foreach normal
for fruta in ${arreglo[@]}; do
    echo "$fruta";
done

# Estilo C
longitud=${#arreglo[@]}
let iteraciones=longitud-1
for i in $(seq 0 $iteraciones); do
    echo ${arreglo[$i]};
done
