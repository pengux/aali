# Automated Arch Linux Installer
Well, not fully automated but a collection of scripts to help automating setting up Arch Linux. This is a very opionated setup for me (pengux). Use this at your own risk!

## Software
- [yay](https://aur.archlinux.org/packages/yay/)
- [git](https://aur.archlinux.org/packages/yay/)
- [xorg](https://wiki.archlinux.org/index.php/xorg)
- [pulseaudio](https://wiki.archlinux.org/index.php/PulseAudio)
- [ncpamixer](https://github.com/fulhax/ncpamixer)
- [bluez-utils](https://www.archlinux.org/packages/extra/x86_64/bluez-utils/)
- [libinput](https://wiki.archlinux.org/index.php/Libinput)
- [urxvt](https://wiki.archlinux.org/index.php/Rxvt-unicode)
- [zsh](https://wiki.archlinux.org/index.php/zsh)
- [bspwm](https://wiki.archlinux.org/index.php/bspwm)
- [slock](https://wiki.archlinux.org/index.php/Slock)
- [xidlehook](https://aur.archlinux.org/packages/xidlehook/)
- [autorandr](https://www.archlinux.org/packages/community/any/autorandr/)
- [gnupg](https://wiki.archlinux.org/index.php/GnuPG)
- [sxhkd](https://wiki.archlinux.org/index.php/sxhkd)
- [dmenu](https://wiki.archlinux.org/index.php/dmenu)
- [polybar](https://wiki.archlinux.org/index.php/polybar)
- [feh](https://wiki.archlinux.org/index.php/Feh)
- [imagemagick](https://wiki.archlinux.org/index.php/ImageMagick)
- [Python](https://wiki.archlinux.org/index.php/python)
- [pywal](https://github.com/dylanaraps/pywal)
- [gvim](https://wiki.archlinux.org/index.php/vim)
- [emacs](https://wiki.archlinux.org/index.php/emacs)
- [w3m](https://www.archlinux.org/packages/extra/x86_64/w3m/)
- [ranger](https://aur.archlinux.org/packages/ranger-git/)
- [Go](https://wiki.archlinux.org/index.php/go)
- [fzf](https://wiki.archlinux.org/index.php/fzf)
- [pass](https://wiki.archlinux.org/index.php/pass)
- [dunst](https://wiki.archlinux.org/index.php/dunst)
- [zathura](https://wiki.archlinux.org/index.php/zathura)
- [wireguard](https://wiki.archlinux.org/index.php/WireGuard)
- [maim](https://www.archlinux.org/packages/community/x86_64/maim/)
- [Docker](https://wiki.archlinux.org/index.php/go)
- [mycli](https://aur.archlinux.org/packages/mycli/)
- [pgcli](https://aur.archlinux.org/packages/pgcli/)
- [Firefox](https://wiki.archlinux.org/index.php/firefox)
- [Chromium](https://wiki.archlinux.org/index.php/Chromium)
- [Slack](https://aur.archlinux.org/packages/slack-desktop/)
- [Skype](https://aur.archlinux.org/packages/skypeforlinux-stable-bin/)
- [Zoom](https://aur.archlinux.org/packages/zoom/)
- [Libreoffice](https://wiki.archlinux.org/index.php/LibreOffice)
- [Gimp](https://wiki.archlinux.org/index.php/GIMP)
- [VLC](https://wiki.archlinux.org/index.php/VLC_media_player)
- [NetworkManager](https://wiki.archlinux.org/index.php/NetworkManager)

### urxvt extensions
- [urxvt-perls](https://www.archlinux.org/packages/community/any/urxvt-perls/)
- [urxvt-resize-font](https://github.com/simmel/urxvt-resize-font)

### NetworkManager VPN support
- [OpenVPN](https://wiki.archlinux.org/index.php/Networkmanager-openvpn)
- [WireGuard](https://wiki.archlinux.org/index.php/WireGuard) (Native support)
- [SSH VPN](https://aur.archlinux.org/packages/networkmanager-ssh-git/)

## Usage
Follow the [Arch Linux Installation Guide](https://wiki.archlinux.org/index.php/Installation_guide) until you have partition and format your file system. Make sure that the `/boot` is a [EFI system partition](https://wiki.archlinux.org/index.php/EFI_system_partition). Mount the file system at `/mnt` and then run:

```
wget https://github.com/pengux/aali/tarball/master
tar -xvf master
cd pengux-aali-xxxxxxx
find . -type f -name '*.sh' -exec chmod +x {} \;
cd 1_base
./run.sh
# Should now be in /mnt
cd /tmp
wget https://github.com/pengux/aali/tarball/master
tar -xvf master
cd pengux-aali-xxxxxxx
find . -type f -name '*.sh' -exec chmod +x {} \;
cd 2_system_setup
./run.sh
# Login as normal user
su arch
cd /tmp/3_post_install
./run.sh
sudo reboot
```

### Variables for overriding settings

#### Base install

##### Variables
| Name            | Description                                                                                                            | Default |
| ---             | ---                                                                                                                    | ---     |
| MIRRORS_COUNTRY | If set, will only use mirrors from the specified country                                                               | all     |
| SET_NOATIME     | Set `noatime` for ext4 mount to [improve performance](https://wiki.archlinux.org/index.php/Ext4#Improving_performance) | false   |

Set these variables to a different value before calling the install script, e.g.:
```
cd 1_base
MIRRORS_COUNTRY=SE SET_NOATIME=true ./run.sh
```

#### System setup

##### Variables
| Name     | Description                                        | Default |
| ---      | ---                                                | ---     |
| SWAPSIZE | Size of the swap file to be created at `/swapfile` | 4G      |
| TZ       | Time-zone for system                               | UTC     |
| LANG     | System language                                    | en_US   |
| KEYMAP   | System keymap                                      | us      |
| HOSTNAME | Hostname of system                                 | arch    |
| USER     | System user                                        | arch    |

Example:
```
cd 2_system_setup
SWAPSIZE=32G TZ=Europe/Stockholm LANG=sv_SE KEYMAP=sv-latin1 HOSTNAME=mylinux USER=peter ./run.sh
```

#### Post-install

##### Variables
| Name     | Description          | Default |
| ---      | ---                  | ---     |
| KEYMAP       | Keymap for X11 | us     |

Example:
```
cd 3_post_install
KEYMAP=se ./run.sh
```

##### Notes
- [Improve compile time](https://wiki.archlinux.org/index.php/Makepkg#Improving_compile_times) by using [ccache](https://wiki.archlinux.org/index.php/Ccache)
- Install and setup [profile-sync-daemon](https://wiki.archlinux.org/index.php/Profile-sync-daemon) to manage browser profiles in tmpfs

## Credits
Code and inspiration taken from [https://github.com/ictsolved/AALI](https://github.com/ictsolved/AALI) and this [article](https://steemit.com/linux/@saradgajurel/automated-arch-linux-installer-aali-shell-script)
