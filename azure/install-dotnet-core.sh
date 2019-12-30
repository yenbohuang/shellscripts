#!/bin/sh

sudo dpkg --purge packages-microsoft-prod
wget -q https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb -O ~/packages-microsoft-prod.deb
sudo apt-get install ~/packages-microsoft-prod.deb
rm ~/packages-microsoft-prod.deb

sudo apt-get update
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install dotnet-sdk-3.1
