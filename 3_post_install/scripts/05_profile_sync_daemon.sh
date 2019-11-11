#!/bin/bash

echo -e "\nInstall and setup profile-sync-daemon\n"
yay -S --noconfirm --needed profile-sync-daemon
psd
echo 'USE_OVERLAYFS="yes"' >> $HOME/.config/psd/psd.conf
sed -i 's/^#BROWSERS=""/BROWSERS="chromium firefox"/' $HOME/.config/psd/psd.conf
psd p
systemctl --user enable psd.service
echo
