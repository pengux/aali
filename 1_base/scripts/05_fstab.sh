#!/bin/bash

SET_NOATIME=${SET_NOATIME:-false}

echo -e "\nGenerating fstab\n"
genfstab -U /mnt >> /mnt/etc/fstab
echo

if [ "$SET_NOATIME" = true ]; then
echo -e "\nSetting noatime for ext4 mount\n"
sed -i 's/rw,relatime/rw,relatime,noatime/' /etc/fstab
echo
fi
