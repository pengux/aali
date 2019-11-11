#!/bin/bash

echo "Installing yay"
sudo pacman -S --noconfirm --needed git
sudo chmod 777 /tmp/makepkg
mkdir -p /tmp/yay_install
cd /tmp/yay_install
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ~
rm -rf /tmp/yay_install
echo

echo "Updating package repository"
yay -Syu
echo
