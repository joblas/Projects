#!/usr/bin/env bash
# File: guessinggame.sh
# 08-22-2019 Joseph BLas Created this.

typeset -i num=0
file_counter=$(ls -l | wc -l)

function answer {
	echo "Guess how many files in current directory"
	read guess
}
while [[ $guess != $file_counter ]]; do
	num=num+1
		if [[ -z $guess ]]; then
				answer
		elif [[ $guess < $file_counter ]]; then
				echo ""
				echo "Guess Higher..."
				answer
		elif [[ $guess > $file_counter ]]; then
				echo ""
				echo "Guess Lower..."
				answer
		fi
done
echo "Correct! You guessed $num times"
echo ""