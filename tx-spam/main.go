package main

import (
	"fmt"
	"os"
)

func main() {
	var wallet string
	fmt.Print("Enter the name of the sender's wallet (e.g. MyWallet): ")
	fmt.Fscan(os.Stdin, &wallet)

	var receiver string
	fmt.Print("Enter the recipient's address (e.g. umee1p3tzjv4lfuwf66cld0yarrdjx5fancr5vhfy29): ")
	fmt.Fscan(os.Stdin, &receiver)

	var amount string
	fmt.Print("Enter amount of tokens (e.g. 100stake): ")
	fmt.Fscan(os.Stdin, &amount)

	var fee string
	fmt.Print("Enter amount of tokend for fees (e.g. 100stake): ")
	fmt.Fscan(os.Stdin, &fee)

	var chain_id string
	fmt.Print("Enter the name of the testnet network (e.g. beta-net-01): ")
	fmt.Fscan(os.Stdin, &chain_id)

	var memo string
	fmt.Print("Enter your desired memo (e.g. Hello_World!): ")
	fmt.Fscan(os.Stdin, &memo)

	data := ("export WALLET=" + wallet + "\nexport RECEIVER=" + receiver + "\nexport AMOUNT=" + amount + "\nexport FEE=" + fee + "\nexport CHAIN_ID=" + chain_id + "\nexport MEMO=" + memo + "")
	file, err := os.Create("varible.sh")
	// error
	if err != nil {
		// print it out
		fmt.Println(err)
	}
	defer file.Close()
	file.WriteString(data)

}

