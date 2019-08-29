all: guessinggame.sh README.md

guessinggame.sh:
	touch guessinggame.sh 
	echo "# Guessing Game" >> README.md
	echo " " >> README.md

README.md: 
	echo "**Today is :**" `date` >> README.md
	echo " " >> README.md
	echo "** Total lines of *Code* in Guessing:** " `wc -l < guessinggame.sh` >> README.md

clean:
	rm guessinggame.sh
	rm README.md