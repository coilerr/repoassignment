
all:README.md

README.md:
	touch README.md
  
README.md: guessinggame.sh
	echo "Number of lines in guessinggame.sh" > README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "date" >> README.md
	date >> README.md
