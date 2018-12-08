#!/usr/bin/env bash
apt-get upgrade
apt-get update
apt-get install iputils-ping
apt-get install net-tools
apt-get -y install curl
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
/eosnagc/itc/bc_eos_itc/contract/fmcgct/scripts/deploy.sh