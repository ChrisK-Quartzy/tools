#!/usr/bin/env zsh

case $1 in
    's-lapi')
        echo "ssh --> staging lab-api (rufio)"
        tsh ssh --cluster staging quartzy@stagingvpc_rufio_php74
        ;;
    'p-lapi')
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
    's-work')
        echo "ssh --> staging worker (aio0)"
        tsh ssh --cluster staging quartzy@stagingvpc_aio0-a0ce475c-2c32-57de-b7e1-737709bc26fd
        ;;
    'p-work')
        echo "ssh --> production worker (worker0)"
        tsh ssh --cluster production quartzy@prodvpc_worker0-e3f054d8-9ef6-5f11-9d6f-df8b63610fd0
        ;;
    's-lbe')
        echo "ssh --> staging lab-backend (abe0)"
        tsh ssh --cluster staging quartzy@stagingvpc_abe0-6769e7d4-3a8e-54a7-ae0f-9139f9d6e7fc
        ;;
    'p-lbe')
        echo "ssh --> production lab-backend (abe0)"
        tsh ssh --cluster production quartzy@prodvpc_abe0-26f04faf-b232-54e4-b695-e4e634069b4e
        ;;
esac
