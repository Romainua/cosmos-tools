#!/bin/bash

go run main.go

echo '#!/bin/bash' > script.sh

cat script.sh wallet.sh > walletrun.sh

chmod +x walletrun.sh

./walletrun.sh

cat script.sh receiver.sh > receiverrun.sh

chmod +x receiverrun.sh

./receiverrun.sh

cat script.sh amount.sh > amountrun.sh

chmod +x amountrun.sh

./amountrun.sh

cat script.sh fee.sh > feerun.sh

chmod +x feerun.sh

./feerun.sh

cat script.sh chain_id.sh > chain_idrun.sh

chmod +x chain_idrun.sh

./chain_idrun.sh


cat script.sh memo.sh > memorun.sh

chmod +x memorun.sh

./memorun.sh

rm memorun.sh chain_idrun.sh feerun.sh amountrun.sh receiverrun.sh receiver.sh amount.sh chain_id.sh fee.sh walletrun.sh wallet.sh memo.sh script.sh

source ~/.profile

tail -n1  ~/.profile

echo -e "Check your variables above☝️"

read -n 1 -s -r -p "Press any button to continue"

echo -e "1\nLet the spaaaaam start!"

sleep 5

while :

do

        umeed tx bank send $WALLET $RECEIVER $AMOUNT --from $WALLET --fees $FEE --chain-id $CHAIN_ID -y --keyring-backend test --note "$MEMO"

sleep 5

done
