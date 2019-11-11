#!/bin/bash

#This will execute after user exits from chroot

echo -e "\nUnmounting Partitions\n"
umount -R /mnt
echo
