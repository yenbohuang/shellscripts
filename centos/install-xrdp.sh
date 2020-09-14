#!/bin/sh
# http://www.itzgeek.com/how-tos/linux/centos-how-tos/install-xrdp-on-centos-7-rhel-7.html

sudo yum install xrdp tigervnc-server
sudo systemctl start xrdp.service
sudo netstat -antup | grep xrdp
sudo systemctl enable xrdp.service
