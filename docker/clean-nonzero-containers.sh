#!/bin/sh

docker rm $(docker ps -a -q --filter 'existed!=0')

