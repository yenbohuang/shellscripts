#!/bin/sh

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y autoremove
sudo do-release-upgrade

lsb_release -a
