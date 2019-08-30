all: README.md guessinggame.sh

README.md:
	echo "# Joe's Guessing Game" > README.md
	echo -n "- Date: " >> README.md 
	date >> README.md
	echo -n " - Lines: " >> README.md
	wc -l < guessinggame.sh >> README.md
clean:
	rm README.md