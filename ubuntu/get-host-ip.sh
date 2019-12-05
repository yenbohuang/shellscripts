#!/bin/sh

# https://opensource.com/article/18/5/how-find-ip-address-linux
hostname -I | awk '{print $1}'
