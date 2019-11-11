#!/bin/bash

KEYMAP=${KEYMAP:-UTC}

echo "Installing libxkbcommon and setup keymap"
yay -S --noconfirm --needed libxkbcommon
localectl set-x11-keymap $KEYMAP
echo
