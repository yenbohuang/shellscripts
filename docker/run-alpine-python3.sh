#!/bin/sh

docker run --name alpine-python3 --rm -it python:3.8.0-alpine3.10 /bin/sh
docker ps -a
