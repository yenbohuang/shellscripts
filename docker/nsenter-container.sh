#!/bin/sh

# Similiar to 'docker exec' but can only be run locally.
# Use 'nsenter' when 'docker exec' does not work.

CONTAINER_NAME_OR_ID=$1
PID=$(docker inspect --format \{{.State.Pid\}} $CONTAINER_NAME_OR_ID)

sudo nsenter --target $PID --mount --uts --ipc --net --pid
