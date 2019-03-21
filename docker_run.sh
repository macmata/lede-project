#!/bin/bash

sudo docker run --network=host -i -t --mount type=bind,source="$(pwd)",target=/home/openwrt openwrt "./compile_openwrt.sh"
