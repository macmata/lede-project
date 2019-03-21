#!/bin/bash

#sudo docker build -t openwrt .
# if network issue
sudo docker build --network=host -t openwrt .
