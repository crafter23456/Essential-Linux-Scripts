#!/bin/bash
cd /backup
echo -e "\n---------------------------------------------------------------------------------\n"
echo -e "What folder do you wanna delete ?\n"


files=$(ls -d)
i=1

for j in $files
do
echo "$i.$j"
file[i]=$j
i=$(( i + 1 ))
done

echo -e "\n---------------------------------------------------------------------------------\n"

echo -e "Enter number\n"

read input

re='^[0-9]+$'

while :; do
if ! [[ $input =~ $re ]] ; then
		if [ "$input" == "l" ] || [ "$input" == "exit" ] || [ "$input" == "q" ]; then
			echo "This script will exit now."
			exit 1
		else
			echo "Error: Not a number"
			echo -e "Enter number"
			read input
		fi
   
else
	break
fi
done

read -r -p "Please insert 'YES' to allow the deletion. Otherwise this script will exit here: " ANSWER

if [ "$ANSWER" == "YES" ] || [ "$ANSWER" == "y" ]; then
	echo "Deleting the folder..."
	rm -r ${file[$input]}

	else
		echo "Your answer was \"$ANSWER\" and not YES. So this script will exit now."
		exit 1
fi