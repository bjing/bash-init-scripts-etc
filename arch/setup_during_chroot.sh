#!/bin/bash

########################################
# Make sure relevant locales in /etc/locale.gen have been uncommented
# BEFORE RUNNING THIS SCRIPT
########################################

if [ $# != 1 ]; then
    echo "Usage: $0 vbox/uefi"
    exit -1
else
    MODE=$1
fi

if [ $MODE = "uefi" ]; then
    ls /sys/firmware/efi/efivars
    if [ $? != 0 ]; then
        echo "Not booted in UEFI mode, exiting..."
        exit -1
    fi
fi

# Timezone & clock
echo "Setting up timezone and clock..."
ln -sf /usr/share/zoneinfo/Australia/Melbourne /etc/localtime
hwclock --systohc

# Edit /etc/locale.gen and uncomment en_AU.UTF-8 UTF-8 and other needed locales.
# Generate the locales by running:
locale-gen

echo "Copying config_files/locale.conf to /etc/locale.conf"
cp config_files/locale.conf /etc/locale.conf

echo "Creating hostname"
echo "brians-arch" > /etc/hostname

# Install vim and grub
pacman -Syu --noconfirm vim grub iwd sudo

ln -s /usr/bin/vim /usr/bin/vi

echo "Set up network interfaces and tools"
sh scripts/setup_network.sh

if [ $MODE = "vbox" ]; then
    sh scripts/setup_grub_vbox.sh
else
    sh scripts/setup_grub_uefi.sh
fi

# Set up root password
passwd

# Add a new user
useradd -m brian
usermod -aG wheel brian

# Setup sudo
visudo
