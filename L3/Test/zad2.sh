#!/bin/bash
# Skrypt znajduje wszystkie pliki, ktore maja w swojej tresci swoja nazwe

for pliki in *; do
  if [ -f "$pliki" ]; then     
    wypisz=$(cat $pliki | grep $pliki)   
    if [ -n "$wypisz" ]; then
      echo "Plik: $pliki zawiera w swojej treści swoja nazwę"
      else
      echo "Nie ma plikow ktore zawieraja w tresci swoja nazwe"
    fi
  fi
done