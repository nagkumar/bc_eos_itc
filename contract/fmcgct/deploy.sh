#!/usr/bin/env bash
cd /eosnagc/itc/bc_eos_itc/contract/fmcgct
eosio-cpp -o fmcgct.wasm fmcgct.cpp --abigen
cd ..
cleos --url http://127.0.0.1:7777 set contract hello1 ./fmcgct -p hello1@active
cleos --url http://127.0.0.1:7777 push action hello1 promote '["mg12345", "crd","itc", "mfr"]' -p hello1@active
cleos --url http://127.0.0.1:7777 get table hello1 hello1 fmcg