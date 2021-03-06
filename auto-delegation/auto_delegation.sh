#!/bin/bash

############ START - SET PROPERTIES #########

ADDRESS="address"
VALIDATOR="valoper"
KEY_NAME="val"
PASS="PASSWORD"

CHAIN_ID="torii-1" #for mainnet: stargaze-1
GAS_VALUE="auto" #for example: 200000 or auto
#FEE_VALUE="<fee_value>" #for example: 200ustars

############ END - SET PROPERTIES #########

############ START - AUTO DELEGATION #########

# Withdraw
        while :
do
        echo $PASS | archwayd tx distribution withdraw-rewards "${VALIDATOR}"  --from "${KEY_NAME}" --chain-id=${CHAIN_ID} --gas="${GAS_VALUE}" -y

sleep 10s

AVAILABLE_COIN=$(archwayd query bank balances ${ADDRESS} --output json | jq -r '.balances | map(select(.denom == "utorii")) | .[].amount' | tr -cd [:digit:])
KEEP_FOR_FEES=1000000
AMOUNT=$(($AVAILABLE_COIN - $KEEP_FOR_FEES))
AMOUNT_FINAL=$AMOUNT"utorii"


# Delegate
#starsd tx staking delegate "${VALIDATOR}" "${AMOUNT_FINAL}" --from "${KEY_NAME}" --chain-id=${CHAIN_ID} --gas="${GAS_VALUE}"  -y
echo $PASS | archwayd tx staking delegate "${VALIDATOR}" "${AMOUNT_FINAL}" --from "${KEY_NAME}" --chain-id=${CHAIN_ID} --gas="${GAS_VALUE}" -y
date
sleep 15s
done;
