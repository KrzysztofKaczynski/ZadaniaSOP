#!/bin/bash
#
#(2 pkt.) Napisać skrypt, który wszystkie pliki z przyrostkiem ~ (np. plik.txt~),
#skopiuje (jeżeli takie są) do katalogu BACKUP w bieżącym katalogu.
#Jeżeli katalog BACKUP nie istnieje, skrypt powinien go założyć.
#Jeżeli jest już plik (lub inny nie-katalog) o nazwie BACKUP, skrypt powinien zgłosić błąd.

#echo "Podaj rodzaj pliku np ~, txt, sh"
#read i

if [ -e "./BACKUP" ] && [ ! -d "./BACKUP" ]; then # jezeli istnieje plik BACKUP i nie jest katalogiem
  echo =================================================
  echo "BACKUP juz istnieje i nie jest katalogiem"
  echo =================================================
  exit

fi

if [ ! -d "./BACKUP" ]; then # jezli nie istnieje katalog BACKUP
  mkdir "./BACKUP"
fi

#for i in *"$i"; do

for i in *~; do
  echo =================================================
  echo "Kopiuję plik $i do katalogu BACKUP"
  echo =================================================
  cp "$i" "./BACKUP"

done
