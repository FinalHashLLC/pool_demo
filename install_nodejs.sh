#!/bin/sh
echo("Installing CURL")
sudo apt-get -y install curl
echo("Downloading Node-JS Setup Script!")
curl -sL https://deb.nodesource.com/setup | sudo bash -
echo("Installing Node-JS Using Apt Package Manager")
sudo apt-get install -y nodejs
echo("Node-JS Install Completed")

