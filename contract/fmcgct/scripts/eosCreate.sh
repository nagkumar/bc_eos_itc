#!/usr/bin/env bash

#docker run --name eosio -v e:/eosnagw:/eosnagc --publish 7777:7777 --publish 127.0.0.1:5555:5555 --detach eosio/eos:v1.4.1 /bin/bash -c "keosd --http-server-address=0.0.0.0:5555  & exec nodeos -e -p eosio --plugin eosio::producer_plugin --plugin eosio::chain_api_plugin --plugin eosio::history_plugin --plugin eosio::history_api_plugin --plugin eosio::http_plugin -d /mnt/dev/data --config-dir /mnt/dev/config --http-server-address=0.0.0.0:7777 --access-control-allow-origin=* --contracts-console --http-validate-host=false --filter-on='*'"
#docker exec -d eosio /eosnagc/itc/bc_eos_itc/contract/fmcgct/scripts/eosCreate.sh

apt-get upgrade -y
apt-get update -y
apt-get install iputils-ping -y
apt-get install net-tools -y
apt-get -y install curl
apt-get install -y wget && rm -rf /var/lib/apt/lists/*

ifconfig -a
ping localhost -c 4
cleos wallet create --to-console
cleos wallet create_key
cleos --url http://127.0.0.1:7777 get info
cleos --url http://127.0.0.1:7777 get account eosio
cleos wallet import --private-key 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3
cleos --print-request --url http://127.0.0.1:7777 get info
cleos --print-response --url http://127.0.0.1:7777 get account eosio
cleos --url http://127.0.0.1:7777 create account eosio dunya EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos --url http://127.0.0.1:7777 create account eosio hello EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos --url http://127.0.0.1:7777 create account eosio fmcgct EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV

#wget https://github.com/eosio/eosio.cdt/releases/download/v1.4.1/eosio.cdt-1.4.1.x86_64.deb
apt install /eosnagc/dld/eosio.cdt-1.4.1.x86_64.deb
cd /eosnagc/itc/bc_eos_itc/contract/fmcgct/scripts/
./deploy.sh
./deploy.sh
cd ..
pwd