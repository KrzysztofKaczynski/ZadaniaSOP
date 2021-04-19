#!/bin/bash
# Napisać skrypt, które posortuje leksykograficznie i wyświetli zawartość pliku zawierającego teksty.

echo "=========================================="
echo "Wpisz nazwe pliku do posortowania"
echo "=========================================="
read n
cat $n
echo "=========================================="
echo "=========================================="
echo "=========================================="
sort $n > $n.sort
cat *.sort
echo "==============================================="
echo "Wynik sortowania jest zapisany w pliku $n.sort"
echo "==============================================="
