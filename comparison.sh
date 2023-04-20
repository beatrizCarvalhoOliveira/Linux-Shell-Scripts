#!/bin/bash 
echo -e "Please privide a value:\c"
read -r a 
echo -e "Please provide another value : \c"
read -r b

if [ $a -gt $b ];then 

	echo  " $a is greater than $b "
else 
	echo " $b is greater than $a "
fi
