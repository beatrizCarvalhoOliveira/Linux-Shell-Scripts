#!/bin/bash
echo -e "Please provide a value:"
read -r a

i=1
while [ $i  -le 10 ] 
do
echo " $a * $i = " `expr $a \* $i`
i=`expr $i + 1 `
done
