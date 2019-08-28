# Joe's Guessing Game

## This Game counts how many files are in the current working directory plus 1 hidden file

You have unlimited tries until you get the answer correct.
** Made August 23 2019 **
** Total lines of *code* 21**
```
guess=-1
typeset -i num=0
answer=$(ls -A| wc -l)

echo "Guess how may files in current directory"

# Guess the number
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
```

See link to ([github](https://github.com/joblas/Projects.git))