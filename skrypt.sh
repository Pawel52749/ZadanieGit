#!/bin/bash

if [ "$1" == "--date" ]; then
    date
elif [ "$1" == "--logs" ]; then
    for i in {1..100}
    do
        echo "Nr log $i" > log_$i.txt
        echo "Stworzone przez skrypt: $0" >> log_$i.txt
        date >> log_$i.txt
    done
else
    echo "Napisz: $0 --date"
    echo "       $0 --logs"
fi


