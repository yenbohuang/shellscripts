#!/bin/sh
# https://snapcraft.io/storage-explorer
sudo snap install storage-explorer
snap connect storage-explorer:password-manager-service :password-manager-service
