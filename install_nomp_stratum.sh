#!/bin/sh
echo("Downloading NOMP Stratum Source Code")
git clone https://github.com/zone117x/node-open-mining-portal.git nomp
cd nomp
echo("Installing NOMP")
npm update
echo("Install Finished. Please Configure NOMP")
