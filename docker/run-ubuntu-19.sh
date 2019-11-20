#!/bin/sh

docker rm ubuntu19
docker run --name ubuntu19 -it ubuntu:19.04 /bin/sh
docker rm ubuntu19
docker ps -a
