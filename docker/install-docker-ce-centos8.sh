#!/bin/sh

# https://docs.docker.com/engine/install/centos/
sudo yum install yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Require workaround for CentOS 8.2 with "--nobest"
# https://linuxconfig.org/how-to-install-docker-in-rhel-8
sudo yum install --nobest docker-ce docker-ce-cli containerd.io

sudo systemctl enable docker
sudo systemctl start docker

# https://docs.docker.com/install/linux/linux-postinstall/
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
