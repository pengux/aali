#!/bin/bash

echo "Installing Network Manager with VPN support"
yay -S --noconfirm --needed networkmanager networkmanager-openvpn networkmanager-ssh-git
echo

echo "Enabling Networ Manager at Startup"
sudo systemctl enable NetworkManager.service
echo
