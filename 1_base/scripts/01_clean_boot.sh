#!/bin/bash

#Cleans boot of previous installation if exists

echo -e "\nCleaning Boot\n"
if [ -f /mnt/boot/vmlinuz-linux ]
  then
	rm /mnt/boot/vmlinuz-linux
fi
if [ -f /mnt/boot/intel-ucode.img ]
  then
	rm /mnt/boot/intel-ucode.img
fi
echo
