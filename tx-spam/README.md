# This tool for generating spam transactions on the testnet
_Note. This was created by a non-professional. There may be errors and bugs, any help in editing is welcome
At this stage, it is designed to [umee testnet](https://umee.cc)_

## Setup

You need to import your address (with test tokens) with the flag `--keyring-backend test`

Use ``umeed keys add <name> --recover --keyring-backend test``

Clone repository and go to the tx-spam dir

`git clone https://github.com/Romainua/cosmos-tools && cd cosmos-tools/tx-spam`

You need `tmux` or similar to keep the tool running  

Open window in tmux

`tmux new-session -s <name>`

Run the tool

`. ./run.sh`

Enter the required data, this will create variables

You will also be able to see the variables in `~./profile`

Use `ctr+b` and `d` for close tmux window and `tmux attach -t <name>` for open
