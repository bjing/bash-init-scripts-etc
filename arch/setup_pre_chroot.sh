#!/bin/bash

##########################################################
## !!!! Make sure root linux partition and swap partition
## have been setup and are ready to be formatted
## BEFORE RUNNING THIS SCRIPT


## https://github.com/bjing/bash-init-scripts-etc.git
##########################################################

if [ $# != 2 ]; then
    echo "Usage: $0 swap_partition root_partition"
    echo "For example: $0 /dev/sda4 /dev/ada5"
    exit -1
else
    ROOT_PARTITION=$1
    SWAP_PARTITION=$2
fi

# Update system clock
timedatectl set-ntp true

mkfs.ext4 $ROOT_PARTITION
mkswap $SWAP_PARTITION

mount $ROOT_PARTITION /mnt
swapon $SWAP_PARTITION

# Install system files
pacstrap /mnt base linux linux-firmware

# Generate fstab
genfstab -U /mnt >> /mnt/etc/fstab
