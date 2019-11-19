#!/bin/sh

docker rm alpine-python3
docker run --name alpine-python3 -it python:3.8.0-alpine3.10 /bin/sh
docker rm alpine-python3
docker ps -a
