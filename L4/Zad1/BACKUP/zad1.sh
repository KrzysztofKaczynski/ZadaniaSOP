#!/bin/bash
#
# Skrypt kopiuje pliki z przyrostkiem ~ do katalogu BACKUP
echo "Podaj rodzaj pliku np ~, txt, sh"
read i
if [ -e "./BACKUP" ] && [ ! -d "./BACKUP" ];        # jezeli istnieje plik BACKUP i nie jest katalogiem
then                                                
echo =================================================                                                    
  echo "BACKUP juz istnieje i nie jest katalogiem"
echo =================================================  
  exit

fi

if [ ! -d "./BACKUP" ];                             # jezli nie istnieje katalog BACKUP
then                                                
  mkdir "./BACKUP"
fi

for i in *"$i"; do
echo =================================================
  echo "Kopiuję plik $i do katalogu BACKUP"
echo =================================================
  cp "$i" "./BACKUP"

done