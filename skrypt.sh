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
        echo "Stworzone przez skrypt: $0" >> log_$i.txt
        date >> log_$i.txt
    done
else
    echo "Napisz: $0 --date"
    echo "       $0 --logs [number_of_logs]"
fi



