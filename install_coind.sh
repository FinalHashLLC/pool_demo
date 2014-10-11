#!/bin/sh
echo("Installing Dependencies to compile digitalcoind")
sudo apt-get -y install git build-essential libboost-all-dev libcurl4-openssl-dev libdb5.1-dev libdb5.1++-dev mysql-server mysql-client memcached php5-memcached php5-mysqlnd php5-curl php5-json libapache2-mod-php5 apache2 autogen automake autotools-dev miniupnpc libminiupnpc-dev
echo("Downloading digitalcoind v3 source code")
git clone https://github.com/DGCFoundation/DGCV3.0
echo("Beginning Compile")
cd DGCV3.0
./autogen.sh
./configure --with-incompatible-bdb
make -j 2
echo("Compile finished, Setting up Config file")
sudo cp src/digibyted /usr/bin
digibyted
echo ("rpcuser=username
rpcpassword=password
rpcport=8001
daemon=1
testnet=1
algo=scrypt") >> ~/.digibyte/digibyte.conf
echo("Starting Digitalcoind")
echo("Digitalcoind has started. rpcuser=username, rpcpassword=password, rpcport=8001, algo=scrypt")

