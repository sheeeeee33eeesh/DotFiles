#!/usr/bin/env bash
# Sets up I3.
# This Script Does Not Setup A Display Manager Since I Use xinit/startx personally 
# Setup Display Manager With The Following
#     Debian
#           apt install lightdm && systemct enable lightdm
#     Arch
#           pacman -S lightdm lightdm-gtk-greeter && systemctl enable lightdm


# Discord and Google Chrome Will Need To Be Installed Manually Outside of Arch Linux
apt install i3-wm j4-dmenu-desktop autorandr blueman flameshot rclone light kitty thunar pulseaudio -y

mkdir ~/.config/
mkdir ~/.config/i3

mv ./i3/ ~/.config/


