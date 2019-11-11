#!/bin/bash

MIRRORS_COUNTRY=${MIRRORS_COUNTRY:-all}

echo -e "\nMaking backup of existing mirrors\n"
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
echo

echo -e "\nDownloading latest mirrors\n"
(curl https://www.archlinux.org/mirrorlist/?country=$MIRRORS_COUNTRY&protocol=http&protocol=https&ip_version=4& sleep 1;) | tee /etc/pacman.d/mirrorlist > /dev/null
echo

echo -e "\nEnabling new mirrors\n"
sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist
echo

echo -e "\nUpdating package repository\n"
pacman -Sy
echo
