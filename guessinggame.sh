
#!/bin/bash
function guessinggame {
echo "You are starting the guessing game"
}

numberoffiles=$(ls | wc -l)
echo "Guess the number of files of your folder"
read response
echo $reponse
if [[ $response -eq $numberoffiles ]]
then
	echo "You win the number of files is $numberoffiles"
else 
	while [[ $response -ne $numberoffiles ]]
	do
		if [[ $response -gt $numberoffiles ]]
		then
			echo "number is smaller than $response"
		else
			echo "number is greater than $response"
		fi
		echo "try again"
	
		read response
	done

fi

echo "Congratulations"

