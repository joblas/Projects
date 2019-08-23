#!/usr/bin/env bash
# File: guessinggame.sh

#22-Aug-2019 Joseph Blas  Created this.

function file_counter {
count=0
# go through the whole directory listing, including hidden files
for name in * .*
do
    if [[ ! -d $name ]]
    then
        # not a directory so count it
        count=$(($count+1))
    fi
done
echo $count
}

guess=-1
typeset -i num=0

echo "Guess how many files in current directory"

# Use file_counter
(( answer = file_counter))

# Guess how many files
while (( guess != answer )); do
	num=num+1
	read -p "Enter guess $num: " guess
	if (( guess < answer )); then
		echo "Higher..."
	elif (( guess > answer )); then
		echo "Lower..."
	fi
done
echo -e "Correct!"
