#/bin/bash

echo "This is a guessing game"
function takeinput() {
	echo "Enter th number of files in current directory:"
	read guess
	no_of_files=$(ls | wc -l)
}

takeinput
while [[ $guess -ne $no_of_files ]]
do
	if [[ $guess -lt $no_of_files ]]
	then
		echo "Too low"
	else
		echo "Too high"
	fi
	takeinput
done

echo "*Correct Answer*"
echo "---------------------------------"  && ls 
