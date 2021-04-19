#!/bin/bash
#
# Skrypt kopiuje pliki z przyrostkiem ~ do katalogu BACKUP

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

for i in *~; do
echo =================================================
  echo "Kopiuję plik $i do katalogu BACKUP"
echo =================================================
  cp "$i" "./BACKUP"

done