#!/bin/bash
#firstly path
PS3='Please enter your choice (input your option number and press enter): '
options=("Install" "Update" "Disable" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Install")
echo "Choose your setting:"
		echo "I'm running for the first time and want to set up variables"
		echo "I've already run script before and I don't want to set up variables"
		read choice 
		echo $opt
go run main.go
 
cat varible.sh >> ~/.profile

source ~/.profile

rm varible.sh

tail -n6  ~/.profile

echo -e "\nCheck your variables above☝️"

read -n 1 -s -r -p "Press any button to continue"

echo -e "1\nLet the spaaaaam start!"

sleep 5

while :

do

        umeed tx bank send $WALLET $RECEIVER $AMOUNT --from $WALLET --fees $FEE --chain-id $CHAIN_ID -y --keyring-backend test --note "$MEMO"

	echo -e "Still spamming😈"
sleep 2

done
