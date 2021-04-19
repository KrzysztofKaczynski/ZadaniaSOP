#!/bin/bash
# Napisać polecenie, albo skrypt, które policzy ile zmiennych środowiskowych jest zdefiniowanych w systemie.

env | grep -c [A-Z][=] > liczba_zmiennych
echo =========================================================================
echo " $(cat liczba_zmiennych) - zmiennych środowiskowych jest zdefiniowanych w systemie"
echo =========================================================================
