#!/usr/bin/env zsh

case $1 in
    's-lab')
        echo "ssh --> staging lab-api (rufio)"
        tsh ssh --cluster staging quartzy@stagingvpc_rufio_php74
        ;;
    'p-lab')
        echo "ssh --> production lab-api (rufio0)"
        tsh ssh --cluster production quartzy@prodvpc_rufio0_php74
        ;;
    's-cat')
        echo "ssh --> staging catalog"
        tsh ssh --cluster staging quartzy@stagingvpc_catalog0-c202f122-f9f0-5f9c-99e3-70e150ce0b2f
        ;;
    'p-cat')
        echo "ssh --> production catalog"
        tsh ssh --cluster production quartzy@prodvpc_catalog1-34d85505-1d2f-53e6-890b-19d66296c699
        ;;
esac
