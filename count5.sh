#!/bin/bash
i=0
while [ $i -lt 5 ]
do 
	b=`expr $i + 1 `
	echo " $b "
	i=`expr $i + 1 `
done 
