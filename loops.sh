#!/bin/bash
#
<<comment
read -p "What is 2 +2:" numb

if [[ $numb == 4 ]];
then 
	echo "You are correct"
elif [[ $numb -lt 4 ]];
then
	echo "You are predicting less"
else
	echo "You are wrong"
fi
comment

<<comment
for ((i=1; i< 5; i+=1))
do
	echo "$i"
done
comment
num=2
while [[ $num -lt 10 ]]
do
	echo $num
	num=$((num + 2))
done

