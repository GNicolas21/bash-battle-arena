#!/bin/bash
# Script para escanear archivos .txt y ordenarlos por tamaño

# Archivo de salida
output="sort_output.txt"

# Limpiar archivo de salida si existe
> "$output"


# Escanear archivos .txt, excluyendo el archivo de salida
for file in *.txt; do
    [ "$file" == "$output" ] && continue
    if [ -f "$file" ]; then
        size=$(wc -c < "$file")
        echo "$file - $size bytes" >> "$output"
    fi
done


# Ordenar el archivo por tamaño numérico
sort -k3 -n "$output" -o "$output"
