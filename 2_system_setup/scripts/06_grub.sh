#!/bin/bash

echo -e "\nDownloading GRUB\n"
pacman -S --noconfirm --needed grub efibootmgr os-prober
echo

echo -e "\nInstalling GRUB\n"
#installs for EFI system
#needs change if MBR system
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=Arch > /dev/null
echo

echo -e "\nUpdating GRUB\n"
os-prober
grub-mkconfig -o /boot/grub/grub.cfg > /dev/null
echo
