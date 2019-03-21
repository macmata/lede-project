#!/bin/bash

scripts/feeds update -a
scripts/feeds install -a
cp configs/ubiquity_edgerouter_x .config
make defconfig && make clean && make -j1 V=s
[ ! -d output ] && mkdir output
mv bin/targets/ramips/mt7621/openwrt-ramips-mt7621-ubnt-erx-squashfs-sysupgrade.tar output/
