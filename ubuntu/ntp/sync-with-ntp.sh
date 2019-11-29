#!/bin/sh
# https://docs.oracle.com/cd/E90981_01/E90982/html/chrony.html
chronyc -a sources
chronyc -a tracking
sudo chronyc -a 'burst 4/4'
sudo chronyc -a makestep
