#!/usr/bin/env bash
apt-get upgrade
apt-get update
apt-get install iputils-ping
apt-get install net-tools
apt-get -y install curl
apt-get install -y wget   && rm -rf /var/lib/apt/lists/*

ifconfig -a
ping localhost
cleos wallet create --to-console
cleos wallet create_key
cleos --url http://127.0.0.1:7777 get info
cleos --url http://127.0.0.1:7777 get account eosio
cleos wallet import --private-key 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3
cleos --print-request --url http://127.0.0.1:7777 get info
cleos --print-response --url http://127.0.0.1:7777 get account eosio
cleos --url http://127.0.0.1:7777 create account eosio dunya EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos --url http://127.0.0.1:7777 create account eosio hello EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
wget https://github.com/eosio/eosio.cdt/releases/download/v1.4.1/eosio.cdt-1.4.1.x86_64.deb
apt install ./eosio.cdt-1.4.1.x86_64.deb
/eosnagc/itc/bc_eos_itc/contract/fmcgct/scripts/deploy.sh