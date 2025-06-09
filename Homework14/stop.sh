#!/bin/bash


while true
do
	read -p "Enter your word: " word
	stopword='stop'
	
	if [ $word == $stopword ]
	then
	echo "Thanks for using this script"
	break
else
	echo "Please, try again"
	fi
done

