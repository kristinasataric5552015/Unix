#!/usr/bin/env bash
 

echo " Zdravo!!"

function ask {
	echo "Koliko fajlova ima!?"
	read koliko
    files=$(ls -1 | wc -l)
}

ask

while [[ $koliko -ne $files ]]
do
	if [[ $koliko -lt $files ]] 
	then
		echo "Ima vise!"
		
	else
		echo "Ima manje!"
	fi
	ask
done


echo " Cestitam! "
echo "---" && ls -1
