#!/bin/bash

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

sleep 5

echo -e "Still spamming😈"

done
