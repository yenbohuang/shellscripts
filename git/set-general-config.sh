#!/bin/sh
git config --global fetch.prune true
git config --global --add checkout.defaultRemote origin
git config -l
