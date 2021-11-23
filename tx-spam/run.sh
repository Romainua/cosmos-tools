#!/bin/bash

go run main.go
 
chmod +x varible.sh

source ./varible.sh

rm varible.sh

source ~/.profile

tail -n5  ~/.profile

echo -e "Check your variables above☝️"

read -n 1 -s -r -p "Press any button to continue"

echo -e "1\nLet the spaaaaam start!"

sleep 5

while :

do

        umeed tx bank send $WALLET $RECEIVER $AMOUNT --from $WALLET --fees $FEE --chain-id $CHAIN_ID -y --keyring-backend test --note "$MEMO"

sleep 5

echo -e "Still spamming😈"

done
