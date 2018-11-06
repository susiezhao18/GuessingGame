README.md:guessinggame.sh
	echo Project title: Guessing Game > README.md
	echo "" >> README.md
	echo The make was run at the folling datetime: >> README.md
	date +'%y-%m-%d %H:%M:%S' >> README.md
	echo "" >> README.md
	echo guessinggame.sh contains the following number of lines: >> README.md
	wc  -l  guessinggame.sh | egrep -o "[0-9]+" >> README.md
