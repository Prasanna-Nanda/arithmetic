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
