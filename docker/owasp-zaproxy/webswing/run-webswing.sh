#!/bin/sh

docker-compose up -d
sleep 10
sensible-browser http://localhost:18080/zap
