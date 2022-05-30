#!/bin/bash

echo "Installing git"
yay -S --noconfirm --needed git
echo

echo "Installing wayland related packages"
yay -S --noconfirm --needed wayland qt5-wayland glfw-wayland glew-wayland
echo

echo "Installing sway, swayidle, swaylock, waybar"
yay -S --noconfirm --needed sway swayidle swaylock waybar
echo

echo "Installing wl-clipboard"
yay -S --noconfirm --needed wl-clipboard
echo

echo "Installing xdg-desktop-portal-wlr-git"
yay -S --noconfirm --needed xdg-desktop-portal-wlr-git
echo

echo "Installing Pulseaudio, ncpamixer and pavucontrol"
yay -S --noconfirm --needed pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-zeroconf ncpamixer pavucontrol
echo

echo "Installing bluez bluez-utils"
yay -S --noconfirm --needed bluez bluez-utils
echo

echo "Installing acpi"
yay -S --noconfirm --needed acpi
echo

echo "Installing libinput and libinput-gestures"
yay -S --noconfirm --needed libinput xf86-input-libinput xorg-xinput libinput-gestures
echo

echo "Installing ydotool-git"
yay -S --noconfirm --needed ydotool-git
echo

echo "Installing alacritty"
yay -S --noconfirm --needed alacritty
echo

echo "Installing tmux"
yay -S --noconfirm --needed tmux
echo

echo "Installing zsh with plugins"
yay -S --noconfirm --needed zsh zplug
echo

echo "Installing gnupg"
yay -S --noconfirm --needed gnupg
echo

echo "Installing dmenu-wayland"
yay -S --noconfirm --needed dmenu-wayland-git
echo

echo "Installing imv"
yay -S --noconfirm --needed imv
echo

echo "Installing ImageMagick"
yay -S --noconfirm --needed imagemagick
echo

echo "Installing grim and slurp"
yay -S --noconfirm --needed grim slurp
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

echo "Installing neovim with python modules"
yay -S --noconfirm --needed neovim
python3 -m pip install --user --upgrade pynvim
python2 -m pip install --user --upgrade pynvim
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

echo "Installing pass and extensions"
yay -S --noconfirm --needed pass-git pass-update pass-audit
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

echo "Installing Docker and docker-compose"
yay -S --noconfirm --needed docker docker-compose-bin
echo

echo "Installing mycli"
pip install --user mycli
echo

echo "Installing pgcli"
yay -S --noconfirm --needed postgresql-libs
pip install --user pgcli
echo

echo "Installing waterfox"
yay -S --noconfirm --needed waterfox-g4-bin
echo

echo "Installing Google Chrome"
yay -S --noconfirm --needed google-chrome-stable
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

echo "Installing restic backup tool"
yay -S --noconfirm --needed restic
echo

echo "Installing rclone"
yay -S --noconfirm --needed rclone
echo

echo "Installing fuse3"
yay -S --noconfirm --needed fuse3
echo

echo "Installing udisks2"
yay -S --noconfirm --needed udisks2
echo

echo "Installing flameshot"
yay -S --noconfirm --needed flameshot
echo

echo "Installing pipewire"
yay -S --noconfirm --needed pipewire pipewire-pulse
echo

echo "Installing mutt-ics"
pip install --user mutt_ics
echo

echo "Installing ripmime"
yay -S --noconfirm --needed ripmime
echo

echo "Installing fcitx"
yay -S --noconfirm --needed fcitx5 fcitx5-qt fcitx5-unikey fcitx5-configtool fcitx5-gtk
echo

echo "Installing neovide (Neovim GUI)"
yay -S --noconfirm --needed neovide-git
echo

echo "Installing mimeo (filetypes and default apps assocations)"
yay -S --noconfirm --needed mimeo
echo

echo "Installing libimobiledevice (allow tethering through mobile devices)"
yay -S --noconfirm --needed libimobiledevice
echo

echo "Installing snapd"
yay -S --noconfirm --needed snapd
echo

echo "Installing flutter"
sudo snap install flutter --classic
echo

