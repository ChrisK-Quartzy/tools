#!/usr/bin/env zsh

case $1 in
    s-cat)
        echo "ssh --> staging catalog"
        tsh ssh --cluster staging quartzy@stagingvpc_catalog0-c202f122-f9f0-5f9c-99e3-70e150ce0b2f
        ;;
    t-cat)
        echo "ssh --> production catalog"
        tsh ssh --cluster productcion quartzy@prodvpc_catalog1-34d85505-1d2f-53e6-890b-19d66296c699
        ;;
esac
