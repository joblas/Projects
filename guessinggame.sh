#!/usr/bin/env bash
# File: guessinggame.sh
# 08-22-2019 Joseph BLas Created this.

typeset -i num=0
fileCounter=$( ls -la | wc -l)

function answer {
	echo "Guess how many files are in the current directory"
	read guess
}
while [[ $guess != $fileCounter ]]; do
	num=num+1
		if [[ -z $guess ]]; then
				answer
		elif [[ $guess < $fileCounter ]]; then
				echo ""
				echo "Guess Higher..."
				answer
		elif [[ $guess > $fileCounter ]]; then
				echo ""
				echo "Guess Lower..."
				answer
		fi
done
echo "Correct! You guessed $num times"
echo ""