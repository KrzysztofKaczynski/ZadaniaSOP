#!/bin/bash
# Napisać skrypt, który obliczy n-tą liczbę Fibonacciego - rekurencyjnie.
function fibonacci {
local wyraz=$1
if [[ $wyraz -lt 0 ]]
then
echo "Błąd parametru wejściowego"
return 1
fi
if [[ $wyraz == "0" ]]
then
echo 0
return 0
elif [[ $wyraz == "1" ]]
then
echo 1
return 0
fi
local parametr1=$(($wyraz - 1))
local parametr2=$(($wyraz - 2))
local wartosc1=$(fibonacci $parametr1)
local wartosc2=$(fibonacci $parametr2)
echo $(($wartosc1 + $wartosc2))
}
echo $(fibonacci $1)