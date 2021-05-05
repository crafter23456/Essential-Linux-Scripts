#!/bin/bash

echo -e "\n---------------------------------------------------------------------------------\n"

echo -e "What script do you wanna execlude?\n"
echo "[1] PAPER PATCH"
echo "[2] MOVE FILES"
echo "[3] COPY CITY"
echo "[4] UNZIP"
echo "[5] DUMP DATABASE"
echo "[6] DELETE DICTIONARIES"
echo "[7] QUIT"

echo ""

CASE=1
while [ $CASE -ne 0 ]; do
    read -r -p "Please enter the number of your choice: " TYPE_INT
	
	case $TYPE_INT in
        "1")
		cd /home && ./paper.sh
CASE=0
            ;;
        "2")
		cd /home && ./score.sh
CASE=0
            ;;
        "3")
		cd /home && ./copy.sh
CASE=0
            ;;
        "4")
		cd /home && ./unzip.sh
CASE=0
            ;;
		"5")
		cd /home && ./dump.sh
CASE=0
            ;;
		"6")
		cd /home && ./delete.sh
CASE=0
            ;;
        "7")
            break
			CASE=0
            ;;
        *) echo "invalid option";;
    esac
done