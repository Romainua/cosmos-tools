#!/bin/bash

#firstly path                
function createVarible () {
        go run main.go
        cat varible.sh >> ~/.profile
        source ~/.profile
        tail -n6  ~/.profile
        echo -e "\nCheck your variables above☝️"
        read -n 1 -s -r -p "Press any button to continue";
}
#secondly path
function txSend () {
	source ~/.profile
        echo -e "\nLet the spaaaaam start!"
        sleep 5
        while :
do
        umeed tx bank send $WALLET $RECEIVER $AMOUNT --from $WALLET --fees $FEE --chain-id $CHAIN_ID -y --keyring-backend test --note "$MEMO"
        echo -e "Still spamming😈"
        sleep 2
done;
}
PS3='Choose your setting: '
data=("I'm running for the first time and want to set up variables" "I've already run script before and I don't want to set up variables" "Check varible" )
select opt in "${data[@]}"
do
    case $opt in
        "I'm running for the first time and want to set up variables")
        createVarible
        txSend
        ;;
        "I've already run script before and I don't want to set up variables")
        txSend
 	;;
	"Check varible")
		tail -n6  ~/.profile
		break
	;;
*)
esac
echo
done;

