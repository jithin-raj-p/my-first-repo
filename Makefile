all: README.md

README.md:
	echo "# Shell script to guess the number of files in the current directory\n" > README.md
	echo -n "Make file ran at:" >> README.md
	date >> README.md
	echo -n "\nNumber of lines in guessinggame.sh is:" >> README.md
	wc -l < ./guessinggame.sh >> README.md
