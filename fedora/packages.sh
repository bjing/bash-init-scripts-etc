#!/bin/bash

# dnf/rpm-ostree
sudo dnf install vim neovim htop wget curl git tmux
sudo dnf install gnome-tweaks


# flatpak installs
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub \
  com.valvesoftware.Steam \
  com.heroicgameslauncher.hgl \
  com.discordapp.Discord \
  com.slack.Slack \
  com.getpostman.Postman \
  com.visualstudio.code \
  com.ranfdev.DistroShelf \
  com.mattjakeman.ExtensionManager
