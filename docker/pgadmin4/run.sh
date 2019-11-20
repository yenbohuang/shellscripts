#!/bin/sh
docker-compose up -d
sleep 10s
sensible-browser http://localhost:10080
