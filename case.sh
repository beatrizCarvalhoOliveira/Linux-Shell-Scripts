#!/bin/bash

echo -e "Provide a value:"
read -r a
echo -e "Provide another value:"
read -r b

echo "1. Sum"
echo "2. Substraction"
echo "3.Multiplications"
echo "4. Division"
echo "5. Modulo Division"

echo -e " Enter your choice from above menu" 
read -r ch

case $ch in 
1) echo " $a + $b = "`expr $a + $b `;;
2) echo " $a - $b = " `expr $a - $b`;;
3) echo " $a x $b = " `expr $a \* $b `;;
4) echo " $a / $b = "`expr $a / $b `;;
5) echo " $a % $b = "` expr $a % $b `;;
*) echo "Invalid option" 
esac

