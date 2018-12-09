#!/usr/bin/env bash
cleos wallet unlock --password PW5KF1BJkTGwgv23s8bo2uutuPJDf74ut5ZStWrPv9uwrUkmfhEGN
cd /eosnagc/itc/bc_eos_itc/contract/fmcgct
eosio-cpp -o fmcgct.wasm fmcgct.cpp --abigen
cd ..
cleos --url http://127.0.0.1:7777 set contract hello ./fmcgct -p hello@active
cd fmcgct
cleos --url http://127.0.0.1:7777 push action hello promote '["mg12", "crd","itc", "mfr"]' -p hello@active
cleos --url http://127.0.0.1:7777 get table hello hello fmcg


#cleos --url http://127.0.0.1:7777 set fmcgct hello hello --clear
#cleos --url http://127.0.0.1:7777 set contract account directory --clear