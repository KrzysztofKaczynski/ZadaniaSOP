#!/bin/bash
#
# Skrypt kopiuje pliki z przyrostkiem ~ do katalogu BACKUP

if [ -e "./BACKUP" ] && [ ! -d "./BACKUP" ]; 
then  # jezeli istnieje plik BACKUP
                                                # i nie jest katalogiem
  echo "BACKUP juz istnieje i nie jest katalogiem"
  exit

fi

if [ ! -d "./BACKUP" ]; 
then   # jezli nie istnieje katalog BACKUP
  mkdir "./BACKUP"
fi

for i in *sh; do
  echo "Kopiuję plik $i do katalogu BACKUP"
  cp "$i" "./BACKUP"
done