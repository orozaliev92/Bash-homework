#!/bin/bash


read -p "Enter your number : " number

for i in {1..10}
do
	echo $number x $i = $(($number*$i))
done
