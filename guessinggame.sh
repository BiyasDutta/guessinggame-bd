filescount() {
	
	actual=$(ls -l | awk 'END {print NR}')
	let actual=$actual-1
	correct=0
	
	while [[ $correct -eq "no" ]]
	do
		echo "Make a guess."
		read input
		
		if [[ $input -eq $actual ]]
		then
			echo "Right answer."
			let correct=1
		elif [[ $input -lt $actual ]]
		then
			echo "Too low! Please try again."
		else [[ $input -gt $actual ]]
			echo "Too high! Please try again."
		fi
		
	done
}

echo "Lets play a game! Guess the number of files in this directory."

filescount
