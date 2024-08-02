#!/bin/bash

set -eu -o pipefail # fail on error and report it, debug all lines

sudo -n true
test $? -eq 0 || exit 1 "you should have sudo privilege to run this script"

echo installing the must-have pre-requisites
while read -r p ; do sudo apt-get install -y $p ; done < <(cat << "EOF"
    sway
    swaybg
    sway-backgrounds
    swayidle
    swaylock
    wlogout
    alacritty
    micro
    lxpolkit
    fastfetch
    lxappearance
    xdg-desktop-portal
    xdg-desktop-portal-wlr
    arandr
    nm-tray
    blueman
    wl-clipboard
    fonts-font-awesome
    waybar
    mako-notifier
    wofi
    flameshot
    grimshot
    simplescreenrecorder
    pavucontrol
    htop
    curl
    wget
    git
    gdebi
    flatpak
    cheese
    speedcrunch
    cava
    thunar
    okular
    qimgv
    mpv
    gcolor3
    timeshift
    virt-manager
    wireguard
    wireplumber
    gamemode
    
EOF
)

echo installing the nice-to-have pre-requisites
echo you have 5 seconds to proceed ...
echo or
echo hit Ctrl+C to quit
echo -e "\n"
sleep 6

sudo apt-get install -y tig
