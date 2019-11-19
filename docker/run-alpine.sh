#!/bin/sh

docker rm alpine-linux
docker run --name alpine-linux -it alpine:3.10.3 /bin/sh
docker rm alpine-linux
docker ps -a
