function guessinggame {
	## This program lets you guess the number of files in a specific directory

	let files="$(ls|wc -l)"
	echo "Can you guess the number of files that are in this directory?"
	read varname
	echo "Your guess is: $varname"

	while [[ $varname != $files ]]
	do
	if [[ $varname -lt $files ]]
	then
	echo "Your answer is too low, guess again!"
	read varname
	elif [[ $varname -gt $files ]]
	then
	echo "Your answer is too high, guess again!"
	read varname
	fi
	done

	if [[ $varname -eq $files ]]
	then
	echo "Congratulations, that is correct!!!"
	fi

}