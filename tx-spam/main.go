package main

import (
        "fmt"
        "os"
)

func main() {
        var wallet string
        fmt.Print("Enter the name of the sender's wallet (e.g. MyWallet): ")
        fmt.Fscan(os.Stdin, &wallet)
        mywallet := ("echo 'export WALLET='"+wallet+" >> ~/.profile")

        file, err := os.Create("wallet.sh")
        // error
        if err != nil {
                // print it out
                fmt.Println(err)
        }
        defer file.Close() 
        file.WriteString(mywallet)

        var receiver string
        fmt.Print("Enter the recipient's address (e.g. umee1p3tzjv4lfuwf66cld0yarrdjx5fancr5vhfy29): ")
        fmt.Fscan(os.Stdin, &receiver)
        myrecevier := ("echo 'export RECEIVER='"+receiver+" >> ~/.profile")

        receiverfile, err := os.Create("receiver.sh")
        // error
        if err != nil {
          // print it out
          fmt.Println(err)
        }
        defer receiverfile.Close()
        file.WriteString(myrecevier)

        var amount string
        fmt.Print("Enter amount of tokens (e.g. 100stake): ")
        fmt.Fscan(os.Stdin, &amount)
        myamount := ("echo 'export AMOUNT='"+amount+" >> ~/.profile")

        amountfile, err := os.Create("amount.sh")
        //error 
        if err != nil {
          //print it out
          fmt.Println(err)
        }
        defer amountfile.Close()
        file.WriteString(myamount)

        var fee string
        fmt.Print("Enter amount of tokend for fees (e.g. 100stake): ")
        fmt.Fscan(os.Stdin, &fee)
        myfee := ("echo 'export FEE='"+fee+" >> ~/.profile")

        feefile, err := os.Create("fee.sh")
        //error
        if err != nil {
          //print it out 
          fmt.Println(err)
        }
        defer feefile.Close()
        file.WriteString(myfee)

        var chain_id string
        fmt.Print("Enter the name of the testnet network (e.g. beta-net-01): ")
        fmt.Fscan(os.Stdin, &chain_id)
        mychain_id := ("echo 'export CHAIN_ID='"+chain_id+" >> ~/.profile")

        chain_idfile, err := os.Create("chain_id.sh")
        //error
        if err != nil {
          //print it out 
          fmt.Println(err)
        }
        defer chain_idfile.Close()
        file.WriteString(mychain_id)

        var memo string
        fmt.Print("Enter your desired memo (e.g. Hello_World!): ")
        fmt.Fscan(os.Stdin, &memo)
        mymemo := ("echo 'export MEMO='"+memo+" >> ~/.profile")

        memofile, err := os.Create("memo.sh")
        //error
        if err != nil {
          //print it out 
          fmt.Println(err)
        }
        defer memofile.Close()
        file.WriteString(mymemo)

}
