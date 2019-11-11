#!/bin/bash

HOSTNAME=${HOSTNAME:-arch}

echo -e "\nSetting hostname\n"
echo >> /etc/hostname $HOSTNAME
echo

echo -e "\nSetting host file\n"
echo '127.0.0.1	localhost' >> /etc/hosts
echo '::1		localhost' >> /etc/hosts
echo '127.0.1.1	$HOSTNAME.localdomain	$HOSTNAME' >> /etc/hosts
echo

echo -e "\nSetup and enable DHCP\n"
pacman -S --noconfirm dhcpcd
systemctl enable dhcpcd
echo
