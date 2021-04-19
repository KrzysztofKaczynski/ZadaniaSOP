#!/bin/bash
# Napisać skrypt, które posortuje i wyświetli zawartość pliku zawierającego liczby 
#- po jednej liczbie w linii, 
#- ile jest unikalnych liczb, 
#- ile wszystkich,
#- ile takich które się powtarzają.
echo "=========================================="
echo "Wpisz nazwe pliku do posortowania"
echo "=========================================="
read n
cat $n
echo "=========================================="
echo "=========================================="
echo "=========================================="
sort -g $n > $n.sort
cat $n.sort
echo "==============================================="
echo "Wynik sortowania jest zapisany w pliku $n.sort"
echo "==============================================="
w=$n.sort
echo "==============================================="
echo "W pliku znajduje sie $( sort $w | wc -w ) liczb"
echo "Powtarzaja sie $( uniq -d $w | wc -w ) liczby"
echo "Unikalnych liczb jest $( uniq $w | wc -w )"
echo "==============================================="


