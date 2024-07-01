#!/bin/bash

if [ "$1" == "--date" ]; then
    date
elif [ "$1" == "--logs" ]; then
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
elif [ "$1" == "--help" ]; then
    echo "Dostepne opcje:"
    echo "  --date        : Wyswietla aktualna date"
    echo "  --logs [nr]  :  Tworzy [nr] logow (domyslnie tworzy 100)"
    echo "  --help        : Wyswietla help"
else
    echo "Niepoprawne dane uzyj --help"
fi

