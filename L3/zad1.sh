#!/bin/bash
# skrypt, który sprawdza, czy ma 2-gi i n-ty parametr i 
# wypisuje stosowną informację. Wartość n ma być podana z klawiatury. 
# Jeżeli n=2 to to wyświetlany komunikat ma zostać wyświetlony tylko raz.

echo "Który parametr? "
read n
if [ $n -eq $2 ];
then
    echo "Program posiada parametr n=2"
   elif [[ $n -le $# || $n -le $2 ]]
    then
    echo "Program posiada n-ty i n=2 parametr"
  else
 echo "Program nie posiada n-tego parametru "
 fi