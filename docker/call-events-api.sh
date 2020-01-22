#!/bin/sh

curl --unix-socket /var/run/docker.sock http://v1/events \
  | head -1 \
  | python -m json.tool \
  | less
