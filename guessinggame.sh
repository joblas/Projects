#!/usr/bin/env bash
# 08-22-2019 Joseph Blas Created this.
# File: guessinggame.sh

typeset -i attemptCount=0
fileCount=$(ls -lA | wc -l)

function promptAndRead {
    local message=$1
    echo -e "\n${message}"
    echo "Guess how many files are in the current directory:"
    read guess
}

while [[ $guess -ne $fileCount ]]; do
    attemptCount=$((attemptCount + 1))
    if [[ -z $guess ]]; then
        promptAndRead "Welcome to the guessing game!"
    elif [[ $guess -lt $fileCount ]]; then
        promptAndRead "Guess Higher..."
    elif [[ $guess -gt $fileCount ]]; then
        promptAndRead "Guess Lower..."
    fi
done

echo -e "\nCorrect! You guessed $attemptCount times\n"
