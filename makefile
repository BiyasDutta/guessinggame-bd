all:
	echo "guessinggame.sh by Biyas Dutta" > README.md
	date >> README.md
	awk 'END {print NR}' guessinggame.sh >> README.md
