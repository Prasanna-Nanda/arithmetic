#!/bin/bash

read -p "Enter number in A: " num1
read -p " Enter number in B: " num2
read -p " Enter number in c: " num3

val1=$(($num1 + $num2 * $num3))
echo "num1 + num2 * num3 : $val1"

val2=$(($num1 * $num2 + $num3))
echo "A * B + C : $val2"

Val3=$(($num3 + $num1 / $num2))
echo "C + A / B : $val3"

val4=$(($num1 % $num2 + $num3))
echo "A % B + C : $val4"

array=(val1 val2 val3 val4)
for a in "${array[@]}"
do
	echo "$a"

declare -A dict
dict+=(["pos"]="${array[@]}")
posarray=("${dict[pos]}")
for a in "${posarray[@]}"
do
echo "$a"
done

for ((i=0; i<${array[@]}; i++))
do
	for ((j=0; j<${array[@]}; j++))
	do
	if (( ${array[$j]} -it ${array[$i]} ))
	then
	tmp=${array[$i]}
	array[$i]=${number[$i]}
	number[$j]=${tmp}
	fi
	done
done
for n in "${array[@]}"
do
echo "$n"
done

