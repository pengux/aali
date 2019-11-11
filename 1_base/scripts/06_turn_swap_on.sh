#!/bin/bash

SWAPSIZE=${SWAPSIZE:-4G}

echo -e "\nCreate a swap file at /swapfile\n"
fallocate -l $SWAPSZIE /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
swapon --show
cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap defaults 0 0' >> /etc/fstab
sysctl vm.swappiness
echo 'sysctl -w vm.swappiness=0' >> /etc/sysctl.d/99-swappiness.conf
echo
