#!/bin/bash

# https://www.tecmint.com/install-nvidia-drivers-in-linux/

sudo dnf update

# Enable RPM Fusion repositories
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
# Once the repositories are added, you must update the package repository cache by executing the following command
sudo dnf makecache

# Install NVIDIA drivers
sudo dnf install akmod-nvidia xorg-x11-drv-nvidia-cuda

sudo reboot

# After reboot, check
nvidia-smi

