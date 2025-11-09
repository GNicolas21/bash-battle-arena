#!/bin/bash

# Si no se pasa ningún argumento
if [ $# -eq 0 ]; then
    echo "No archivo provided"
    exit 1
fi


# Usa $1 como nombre del archivo
archivo="$1"


# Imprime solo el número de líneas
wc -l < "$archivo"

