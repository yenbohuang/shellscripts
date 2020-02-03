#!/bin/sh
PID=$1
lsof -p $PID | less
