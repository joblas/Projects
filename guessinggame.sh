#!/usr/bin/env bash
# File: guessinggame.sh
# 22-Aug-2019 Joseph Blas  Created this.

guess=-1
typeset -i num=0

echo "Guess how many files in current directory"

# Use file_counter
answer=$(ls -l | wc -l)

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
echo -e "Correct! That took $num guesses.\n"
