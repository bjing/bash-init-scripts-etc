# Set up display and window managers
# https://wiki.archlinux.org/title/KDE
# https://wiki.archlinux.org/title/xmonad#:~:text=xmonad%20is%20a%20tiling%20window,or%20overlap%2C%20maximizing%20screen%20use.&text=xmonad%20is%20written%2C%20configured%20and,the%20user%20in%20configuration%20files.

# UI
sudo pacman -Syu --noconfirm xorg-server xorg-xinit lightdm alsa-firmware
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

# Set up xrandr
sudo pacman -Syu --noconfirm xrandr
# Use this to scale the display if it's too small, the smaller the number the bigger
# the display is scaled to
# xrandr --output eDP-1 --scale 1x1
