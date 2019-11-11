#!/bin/bash

#wget is required to download AALI scripts inside chroot
#base-devel contains useful utilities which are used frequently
#bash-completion helps in auto-completing commands hence included

echo -e "\nInstalling System\n"
pacstrap /mnt base base-devel linux linux-firmware wget bash-completion
echo

echo -e "\nCopy mirrorlist to mount\n"
cp /etc/pacman.d/mirrorlist /mnt/etc/pacman.d/mirrorlist
echo
