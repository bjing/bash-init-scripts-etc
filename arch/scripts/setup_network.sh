# Set up network interfaces
sudo cp arch/20-*network /etc/systemd/network/
sudo systemctl enable systemd-networkd
sudo systemctl enable systemd-resolved

## Install arch packages
# Set up SSH server
sudo pacman -Syu --noconfirm openssh
sudo systemctl enable sshd
