#!/bin/bash

if [ "$1" == "--date" ] || [ "$1" == "-d" ]; then
    date
elif [ "$1" == "--logs" ] || [ "$1" == "-l" ]; then
    liczba_logs=100
    if [ ! -z "$2" ]; then
        liczba_logs=$2
    fi
    for i in $(seq 1 $liczba_logs)
    do
        echo "Nr log $i" > log_$i.txt
        echo "Stworzony przez: $0" >> log_$i.txt
        date >> log_$i.txt
    done
elif [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
    echo "Dostepne opcje:"
    echo "  -d, --date        : Wyswietla aktualna date"
    echo "  -l, --logs [nr]   : Tworzy [nr] logow (domyslnie tworzy 100)"
    echo "  -h, --help        : Wyswietla help"
else
    echo "Niepoprawne dane uzyj --help lub -h"
fi

