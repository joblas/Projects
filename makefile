all: README.md

README.md: guessinggame.sh
	echo "# Joe's Guessing Game" > README.md
	echo -n "- Date: " >> README.md 
	date +"%Y-%m-%d %H:%M:%S" | tr -d '\n' >> README.md
	echo -n " - Lines: " >> README.md
	wc -l < guessinggame.sh | tr -d ' ' >> README.md

clean:
	rm README.md

