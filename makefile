all:
	echo "Bash script to guess number of files." > README.md
	date >> README.md
	awk 'END {print NR}' guessinggame.sh >> README.md
