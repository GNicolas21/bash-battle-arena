#!/bin/bash
# Script para monitorizar cambios en un directorio

# Verificar que se pasó un argumento
if [ $# -eq 0 ]; then
    echo "Uso: $0 ruta_del_directorio"
    exit 1
fi

dir="$1"

# Verificar que el directorio existe
if [ ! -d "$dir" ]; then
    echo "Error: el directorio '$dir' no existe"
    exit 1
fi

# Archivo de registro
logfile="changes.log"

# Tomar primer snapshot del directorio
snapshot1=$(mktemp)
ls -1 "$dir" | sort > "$snapshot1"

echo "Primer snapshot tomado. Realiza cambios en '$dir' y presiona ENTER cuando termines..."
read -r

# Tomar segundo snapshot
snapshot2=$(mktemp)
ls -1 "$dir" | sort > "$snapshot2"

# Registrar diferencias con marca de tiempo
{
    echo "==== $(date) ===="
    diff "$snapshot1" "$snapshot2"
} > "$logfile"

# Limpiar archivos temporales
rm "$snapshot1" "$snapshot2"

echo "Cambios registrados en $logfile"
