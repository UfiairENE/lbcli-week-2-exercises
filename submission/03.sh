# Create a SegWit address.
# Add funds to the address.
# Return only the Address

#!/bin/bash

ADDRESS=$(bitcoin-cli -regtest -rpcwallet=btrustwallet -named getnewaddress address_type="p2sh-segwit")
bitcoin-cli -regtest generatetoaddress 101 "$ADDRESS" > /dev/null
echo "$ADDRESS"