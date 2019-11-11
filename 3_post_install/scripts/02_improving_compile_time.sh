#!/bin/bash

echo -e "\nInstall ccache\n"
yay -S --noconfirm --needed ccache
mkdir -p ~/build/packages
sudo sed -i 's/^#BUILDDIR=/BUILDDIR=/' /etc/makepkg.conf
echo 'PKGDEST=~/build/packages' | sudo tee -a /etc/makepkg.conf > /dev/null
echo
