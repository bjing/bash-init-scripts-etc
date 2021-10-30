# VirtualBox display driver and guest addons
sudo pacman -Syu --noconfirm extra/xf86-video-vmware community/virtualbox-guest-utils

# Enable loading the VirtualBox kernel modules virtualbox
sudo systemctl enable vboxservice

# Set up /etc/X11/xorg.conf.d/10-vmware.conf
sudo cp config_files/10-vmware.conf /etc/X11/xorg.conf.d/10-vmware.conf
