#!/bin/bash
# Napisać skrypt, który wczyta plik zawierający liczby (po jednej w wierszu)
# i wypisze ich maksimum, minimum i sumę. Jeśli plik jest pusty,
# to wypisze odpowiedni komunikat. Nazwa pliku ma być podana jako parametr skryptu.

if [ $# -lt 1 ]; then
  echo "Podaj nazwe pliku!"
  exit
fi

if [ ! -f "$1" ]; then
  echo "Plik $1 nie istnieje!"
  exit
fi

rozmiar=$(cat "$1" | wc -l)
if [ $rozmiar -eq 0 ]; then
  echo "Plik $1 jest pusty!"
  exit
fi

IFS= read -r min <"$1"
max=$min
sum=0

while IFS= read -r num; do
  ((sum += num))
  ((max = num > max ? num : max))
  ((min = num < min ? num : min))
done <"$1"

printf '%s\n' "$1:" "  min: $min" "  max: $max" "  sum: $sum"
