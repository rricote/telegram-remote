#!/bin/bash
cd ~
sudo apt-get update
sudo apt-get 
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make
git clone --recursive https://github.com/vysheng/tg.git && cd tg
./configure
make -j1