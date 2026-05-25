#!/bin/bash

if [ "$1" == "--date" ] || [ "$1" == "-d" ]; then
    date
fi

if ([ "$1" == "--logs" ] || [ "$1" == "-l" ]) && [ -z "$2" ]; then
    for i in $(seq 1 100); do
        echo "Nazwa pliku: log$i.txt" > log$i.txt
        echo "Nazwa skryptu: skrypt.sh" >> log$i.txt
        echo "Data: $(date)" >> log$i.txt
    done
fi

if ([ "$1" == "--logs" ] || [ "$1" == "-l" ]) && [ -n "$2" ]; then
    for i in $(seq 1 $2); do
        echo "Nazwa pliku: log$i.txt" > log$i.txt
        echo "Nazwa skryptu: skrypt.sh" >> log$i.txt
        echo "Data: $(date)" >> log$i.txt
    done
fi

if [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
    echo "--date  -d   wyświetla dzisiejszą datę"
    echo "--logs  -l   tworzy 100 plików log"
    echo "--logs  -l N tworzy N plików log"
    echo "--help  -h   wyświetla dostępne opcje"
fi

if [ "$1" == "--init" ]; then
    git clone https://github.com/sinevokaya/Lab-4-Utrwalenie-skladni-w-Git.git
    export PATH=$PATH:/Users/kasiasiniewicz/Lab-4-Utrwalenie-skladni-w-Git
fi

if ([ "$1" == "--error" ] || [ "$1" == "-e" ]) && [ -z "$2" ]; then
    for i in $(seq 1 100); do
        mkdir -p error$i
        echo "error$i.txt" > error$i/error$i.txt
        echo "Nazwa skryptu: skrypt.sh" >> error$i/error$i.txt
        echo "Data: $(date)" >> error$i/error$i.txt
    done
fi

if ([ "$1" == "--error" ] || [ "$1" == "-e" ]) && [ -n "$2" ]; then
    for i in $(seq 1 $2); do
        mkdir -p error$i
        echo "error$i.txt" > error$i/error$i.txt
        echo "Nazwa skryptu: skrypt.sh" >> error$i/error$i.txt
        echo "Data: $(date)" >> error$i/error$i.txt
    done
fi
