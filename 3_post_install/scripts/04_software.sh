#!/bin/bash

echo "Installing git"
yay -S --noconfirm --needed git
echo

echo "Installing Xorg"
yay -S --noconfirm --needed xorg xorg-xinit
echo

echo "Installing picom"
yay -S --noconfirm --needed picom
echo

echo "Installing Pulseaudio and ncpamixer"
yay -S --noconfirm --needed pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-zeroconf ncpamixer
echo

echo "Installing bluez-utils"
yay -S --noconfirm --needed bluez-utils
echo

echo "Installing libinput and libinput-gestures"
yay -S --noconfirm --needed libinput xf86-input-libinput xorg-xinput libinput-gestures
echo

echo "Installing urxvt with perl extensions"
yay -S --noconfirm --needed rxvt-unicode urxvt-perls
mkdir -p $HOME/.urxvt/ext/
cd /tmp
git clone git@github.com:simmel/urxvt-resize-font.git
cp urxvt-resize-font/resize-font $HOME/.urxvt/ext
rm -rf /tmp/urxvt-resize-font
cd ~
echo

echo "Installing zsh with plugins"
yay -S --noconfirm --needed zsh zplug
echo

echo "Installing bspwm and sxhkd"
yay -S --noconfirm --needed bspwm-git sxhkd-git
echo

echo "Installing slock"
yay -S --noconfirm --needed slock
echo

echo "Installing xidlehook"
yay -S --noconfirm --needed xidlehook
echo

echo "Installing autorandr"
yay -S --noconfirm --needed autorandr
echo

echo "Installing gnupg"
yay -S --noconfirm --needed gnupg
echo

echo "Installing dmenu"
yay -S --noconfirm --needed dmenu
echo

echo "Installing polybar"
yay -S --noconfirm --needed polybar
echo

echo "Installing feh"
yay -S --noconfirm --needed feh
echo

echo "Installing ImageMagick"
yay -S --noconfirm --needed imagemagick
echo

echo "Installing Python and pip"
yay -S --noconfirm --needed python python-pip
echo

echo "Installing pywal"
yay -S --noconfirm --needed python-pywal
echo

echo "Installing gvim"
yay -S --noconfirm --needed gvim
echo

echo "Installing emacs"
yay -S --noconfirm --needed emacs
echo

echo "Installing w3m"
yay -S --noconfirm --needed w3m
echo

echo "Installing ranger"
yay -S --noconfirm --needed ranger
echo

echo "Installing Go"
yay -S --noconfirm --needed go
echo

echo "Installing fzf"
yay -S --noconfirm --needed fzf-git
echo

echo "Installing pass"
yay -S --noconfirm --needed pass-git
echo

echo "Installing dunst"
yay -S --noconfirm --needed dunst
echo

echo "Installing zathura and zathura-pdf-mupdf"
yay -S --noconfirm --needed zathura zathura-pdf-mupdf
echo

echo "Installing WireGuard"
yay -S --noconfirm --needed wireguard-tools wireguard-arch
echo

echo "Installing maim for screen capture"
yay -S --noconfirm --needed maim
echo

echo "Installing Docker and docker-compose"
yay -S --noconfirm --needed docker docker-compose-bin
echo

echo "Installing mycli"
yay -S --noconfirm --needed mycli
echo

echo "Installing pgcli"
yay -S --noconfirm --needed pgcli
echo

echo "Installing Firefox"
yay -S --noconfirm --needed firefox
echo

echo "Installing Chromium"
yay -S --noconfirm --needed chromium
echo

echo "Installing Slack"
yay -S --noconfirm --needed slack-desktop
echo

echo "Installing Skype"
yay -S --noconfirm --needed skypeforlinux-stable-bin
echo

echo "Installing Zoom"
yay -S --noconfirm --needed zoom
echo

echo "Installing Libreoffice"
yay -S --noconfirm --needed libreoffice-still
echo

echo "Installing Gimp"
yay -S --noconfirm --needed gimp
echo

echo "Installing VLC"
yay -S --noconfirm --needed vlc
echo
