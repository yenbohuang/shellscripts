#!/bin/sh

curl --unix-socket /var/run/docker.sock http://v1/containers/$1/stats \
  | head -1 \
  | python -m json.tool \
  | less
