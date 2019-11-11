#!/bin/bash

USER=${USER:-arch}

echo -e "\nSet password for root user\n"
passwd
echo

echo -e "\nCreating normal user\n"
useradd -m $USER
usermod -aG wheel $USER
echo

echo -e "\nMaking backup of sudoers\n"
sudo cp /etc/sudoers /etc/sudoers.bak
echo

echo -e "\nEnabling sudo for normal user\n"
sudo sed -i -e 's/# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) ALL/g' /etc/sudoers
echo

echo -e "\nSet password for normal user\n"
passwd $USER
echo
