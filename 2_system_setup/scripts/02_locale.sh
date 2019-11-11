#!/bin/bash

LANG=${LANG:-en_US}
KEYMAP=${KEYMAP:-en_US}

echo -e "\nGenerating locale\n"
locale-gen > /dev/null
echo

echo -e "\nSetting up language\n"
echo 'LANG=$LANG.UTF-8' >> /etc/locale.conf
echo

echo -e "\nSetting up keymap\n"
echo 'KEYMAP=$KEYMAP' >> /etc/vconsole.conf
echo
