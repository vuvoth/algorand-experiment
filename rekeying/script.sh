export $(cat env)


echo "Before"
sandbox goal account dump --address $ADDR_A  

# Rekeying
sandbox goal clerk send --from $ADDR_A --to $ADDR_A --amount 0 --rekey-to $ADDR_B      

echo "After"
sandbox goal account dump --address $ADDR_A  

