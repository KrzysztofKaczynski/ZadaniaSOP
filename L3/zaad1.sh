#!/bin/bash

echo "Który argument?  "
read i
shift $[i - 1]
echo $1
