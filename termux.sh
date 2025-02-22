#!/bin/bash

if [ ! -r "/storage/emulated/0" ]; then
    termux-setup-storage
fi
: ' if [ ! -r "/storage/emulated/0" ]; then
    echo "For this script to work, Termux needs file access permissions."
    echo "Exiting..."
    exit
fi '1

pkg update
pkg install proot-distro -y

if [ ! -d "/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/ubuntu" ]; then
    pd i ubuntu
fi

pd sh ubuntu -- bash <(curl -s https://raw.githubusercontent.com/AyeItsHarry/WiiLinkPatcherAndroid/main/ubuntu.sh)
