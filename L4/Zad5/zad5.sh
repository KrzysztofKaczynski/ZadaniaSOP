#!/bin/bash
#  Napisać skrypt rozwiązujący zadanie 4 dla wielu plików podanych jako argumenty.
# Wykorzystaj podprogramy.

for plik in "$@"; do
  if [ $1 -lt 1 ]; then
    echo "Podaj nazwe pliku!"
    exit
  fi

  if [ ! -f "$plik" ]; then
    echo "Plik $plik nie istnieje!"
    exit
  fi

  rozmiar=$(cat "$plik" | wc -l)
  if [ $rozmiar -eq 0 ]; then
    echo "Plik $plik jest pusty!"
    exit
  fi

  IFS= read -r min <"$plik"
  max=$min
  sum=0

  while IFS= read -r num; do
    ((sum += num))
    ((max = num > max ? num : max))
    ((min = num < min ? num : min))
  done <"$plik"

  printf '%s\n' "$plik:" "  min: $min" "  max: $max" "  sum: $sum"
done
