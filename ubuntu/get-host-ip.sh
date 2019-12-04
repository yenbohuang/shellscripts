#!/bin/sh
ifconfig | grep 'inet 10.' | cut -d ' ' -f 10
