#!/bin/bash
if [ $# -eq 0 ]; then
    echo "No palabra provided"
    exit 1
fi

buscar="$1"


grep -l "$buscar" *.log 2>/dev/null | sort
