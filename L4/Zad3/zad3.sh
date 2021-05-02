#!/bin/bash
#Napisać skrypt, który obliczy n-tą liczbę Fibonacciego - iteracyjnie.
function fibonacci {
    local wyraz=$1
    local wynik=0
    if [[ $wyraz -lt 0 ]]; then
        echo "Błąd parametru wejściowego"
        return 1
    fi
    if [[ $wyraz == "0" ]]; then
        echo 0
        return 0
    elif [[ $wyraz == "1" ]]; then
        echo 1
        return 0
    fi
    local element1=0
    local element2=1
    for ((i = 2; $i < $wyraz; i++)); do
        wynik=$(($element1 + $element2))
        element1=$element2
        element2=$wynik
    done
    echo $(($element1 + $element2))
}
echo $(fibonacci $1)
