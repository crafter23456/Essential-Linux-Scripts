#!/bin/bash
cd /backup # add location of the database backups
echo -e "\n---------------------------------------------------------------------------------\n"
echo -e "What database you want to dump?\n"


files=$(ls *.sql)
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

echo -e "Enter databasen or 'all' if you want to dump all databases. \n"

read database

while :; do
		if [ "$database" == "l" ] || [ "$database" == "exit" ] || [ "$database" == "q" ]; then
			echo "This script will exit now."
			exit 1
		else
			break
		fi
done

read -r -p "Please insert 'YES' to allow the installation. Otherwise this script will exit here: " ANSWER

if [ "$ANSWER" == "YES" ] || [ "$ANSWER" == "y" ]; then
	if [ $database == "all" ]; then
		echo "Dumping all database..."
		mysql -p -o $database < ${file[$input]}
	else
		echo "Dumping database..."
		mysql -p < ${file[$input]}
	fi
else
	echo "Your answer was \"$ANSWER\" and not YES. So this script will exit now."
	exit 1
fi
