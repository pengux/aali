#!/bin/bash

SWAPSIZE=${SWAPSIZE:-4096}

echo -e "\nCreate a swap file at /swapfile\n"
dd if=/dev/zero of=/swapfile bs=1M count=$SWAPSIZE
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
swapon --show
cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap defaults 0 0' >> /etc/fstab
sysctl vm.swappiness
echo 'sysctl -w vm.swappiness=0' >> /etc/sysctl.d/99-swappiness.conf
echo
