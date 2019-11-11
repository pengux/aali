#!/bin/bash

echo "Installing yay"
sudo pacman -S git --noconfirm --needed
mkdir -p /tmp/yay_install
cd /tmp/yay_install
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~
rm -r /tmp/yay_install
echo

echo "Updating package repository"
yay -Syu
echo
