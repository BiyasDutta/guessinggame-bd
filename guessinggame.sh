guessinggame() {
	flag=0
	rcnt=$(ls | awk 'END {print NR}')
	while [[ $flag -eq 0 ]]
	do
		echo "How many files in this directory? Take a guess..."
		read gcnt
		if [[ $gcnt -eq $rcnt ]]
		then
			echo "Congratulations! You are correct!"
			let flag=1
		elif [[ $gcnt -lt $rcnt ]]
		then
			echo "You guessed too low! Try again."
		else [[ $gcnt -gt $rcnt ]]
			echo "You guessed too high! Try again."
		fi
	done
}
guessinggame
