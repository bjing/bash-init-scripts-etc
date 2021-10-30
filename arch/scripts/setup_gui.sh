# UI
sudo pacman -Syu --noconfirm xorg-server xorg-xinit lightdm terminus-font alsa-firmware
# Xmonad
sudo pacman -Syu --noconfirm xmonad xmonad-contrib xterm dmenu xmobar
# Plasma https://wiki.archlinux.org/title/KDE#Installation
sudo pacman -Syu --noconfirm plasma-meta

# Copy X config files
# then in ~/.xinitrc change tdm to `xmonad` or `startplasma-x11`
cp -a config_files/.xinitrc config_files/.xserverrc config_files/.Xresources ~/
# give .xserverrc correct permission
chmod 700 ~/.xserverrc
mkdir -p ~/.config/xmobar
# Xmonad & Xmobar config
cp -a config_files/.xmonad ~/
cp config_files/xmobarrc1 ~/.config/xmobar/xmobarrc

# Install display manager and themes
sudo pacman -Syu --noconfirm lightdm-gtk-greeter lightdm-webkit2-greeter lightdm-slick-greeter
sudo systemctl enable lightdm
