#!/bin/bash
# Limpiar y crear directorios
rm -rf Arena_Boss Victory_Archive
mkdir Arena_Boss Victory_Archive

# Crear 5 archivos
for i in {1..5}; do
    lines=$((RANDOM % 11 + 10))  # Número aleatorio entre 10 y 20
    archivo="Arena_Boss/archivo$i.txt"

    for ((j=1; j<=lines; j++)); do
        if (( RANDOM % 10 == 0 )); then
            echo "Line $j: Victory" >> "$archivo"
        else
            echo "Line $j: $(date +%s%N | sha256sum | head -c 8)" >> "$archivo"
        fi
    done
done


echo "Archivos ordenados por tamaño:"
ls -lS Arena_Boss | grep '.txt' | awk '{print $9 " - " $5 " bytes"}'

# 'Victory' a Victory_Archive
for file in Arena_Boss/*.txt; do
    if grep -q "Victory" "$file"; then
        mv "$file" Victory_Archive/
    fi
done

echo "Archivos con 'Victory' movidos a Victory_Archive."


