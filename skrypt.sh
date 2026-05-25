
#!/bin/bash
if [ "$1" == "--date" ]; then
    date
fi

if [ "$1" == "--logs" ] && [ -z "$2" ]; then
    for i in $(seq 1 100); do
        echo "Nazwa pliku: log$i.txt" >log$i.txt
        echo "Nazwa skryptu: skrypt.sh" >>log$i.txt
        echo "Data: $(date)" >>log$i.txt
    done
fi

if [ "$1" == "--logs" ] && [ -n "$2" ]; then
    for i in $(seq 1 $2); do
        echo "Nazwa pliku: log$i.txt" > log$i.txt
        echo "Nazwa skryptu: skrypt.sh" >> log$i.txt
        echo "Data: $(date)" >> log$i.txt
    done
fi

if [ "$1" == "--help" ]; then
    echo "--date   wyświetla dzisiejszą datę"
    echo "--logs   tworzy 100 plików log.txt"
    echo "--logs n tworzy n plików log.txt"
    echo "--help   wyświetla dostępne opcje"
fi

