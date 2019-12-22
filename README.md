# Automated Arch Linux Installer
Well, not fully automated but a collection of scripts to help automating setting up Arch Linux. This is a very opionated setup for me (pengux). Use this at your own risk!

## Software
- [yay](https://aur.archlinux.org/packages/yay/)
- [git](https://aur.archlinux.org/packages/yay/)
- [wayland](https://wiki.archlinux.org/index.php/Wayland)
- [sway](https://wiki.archlinux.org/index.php/Sway)
- [waybar](https://github.com/Alexays/Waybar)
- [swayidle](https://github.com/swaywm/swayidle)
- [swaylock](https://github.com/swaywm/swaylock)
- [wl-clipboard](https://github.com/bugaevc/wl-clipboard)
- [pulseaudio](https://wiki.archlinux.org/index.php/PulseAudio)
- [ncpamixer](https://github.com/fulhax/ncpamixer)
- [pavucontrol](https://www.archlinux.org/packages/extra/x86_64/pavucontrol/)
- [bluez-utils](https://www.archlinux.org/packages/extra/x86_64/bluez-utils/)
- [libinput](https://wiki.archlinux.org/index.php/Libinput)
- [libinput-gestures](https://aur.archlinux.org/packages/libinput-gestures/)
- [ydotool-git](https://github.com/ReimuNotMoe/ydotool)
- [alacritty](https://github.com/jwilm/alacritty)
- [zsh](https://wiki.archlinux.org/index.php/zsh)
- [gnupg](https://wiki.archlinux.org/index.php/GnuPG)
- [dmenu-wayland-git](https://aur.archlinux.org/packages/dmenu-wayland-git/)
- [imv](https://github.com/eXeC64/imv)
- [imagemagick](https://wiki.archlinux.org/index.php/ImageMagick)
- [grim](https://www.archlinux.org/packages/community/x86_64/grim/)
- [slurp](https://www.archlinux.org/packages/community/x86_64/slurp/)
- [Python](https://wiki.archlinux.org/index.php/python)
- [pywal](https://github.com/dylanaraps/pywal)
- [gvim](https://wiki.archlinux.org/index.php/vim)
- [neovim](https://neovim.io/)
- [emacs](https://wiki.archlinux.org/index.php/emacs)
- [w3m](https://www.archlinux.org/packages/extra/x86_64/w3m/)
- [ranger](https://aur.archlinux.org/packages/ranger-git/)
- [Go](https://wiki.archlinux.org/index.php/go)
- [fzf](https://wiki.archlinux.org/index.php/fzf)
- [pass](https://wiki.archlinux.org/index.php/pass)
- [mako](https://mako-project.org/)
- [zathura](https://wiki.archlinux.org/index.php/zathura)
- [wireguard](https://wiki.archlinux.org/index.php/WireGuard)
- [Docker](https://wiki.archlinux.org/index.php/go)
- [mycli](https://aur.archlinux.org/packages/mycli/)
- [pgcli](https://aur.archlinux.org/packages/pgcli/)
- [Firefox](https://wiki.archlinux.org/index.php/firefox)
- [chromium-ozone](https://aur.archlinux.org/packages/chromium-ozone/)
- [Slack](https://aur.archlinux.org/packages/slack-desktop/)
- [Skype](https://aur.archlinux.org/packages/skypeforlinux-stable-bin/)
- [Zoom](https://aur.archlinux.org/packages/zoom/)
- [Libreoffice](https://wiki.archlinux.org/index.php/LibreOffice)
- [Gimp](https://wiki.archlinux.org/index.php/GIMP)
- [VLC](https://wiki.archlinux.org/index.php/VLC_media_player)
- [restic](https://restic.net/)
- [fuse3](https://github.com/libfuse/libfuse)
- [NetworkManager](https://wiki.archlinux.org/index.php/NetworkManager)

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
