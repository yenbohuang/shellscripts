#!/bin/sh

VOL_NAME=local-registry-storage

docker volume rm $VOL_NAME
docker volume create $VOL_NAME
docker run -d \
  -p 5000:5000 \
  --restart always \
  --name registry \
  -v $VOL_NAME:/var/lib/registry \
  registry:2
