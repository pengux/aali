#!/bin/bash

TZ=${TZ:-UTC}

echo -e "\nSetting time-zone\n"
ln -sf /usr/share/zoneinfo/$TZ /etc/localtime
echo

echo -e "\nUpdating Hardware Clock\n"
hwclock --systohc
echo
