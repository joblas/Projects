all: guessinggame.sh README.md

guessinggame.sh:
	touch guessinggame.sh 

README.md: projects.txt
	echo "This holds guessinggame project" > README.md

clean:
	rm guessinggame.sh
	rm README.md
