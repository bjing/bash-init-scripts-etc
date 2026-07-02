#!/bin/bash

# Portage comamnds
# sudo emerge --sync
# sudo emerge -avuDN @world
# sudo emerge -av --depclean
# sudo emerge -av @preserved-rebuild

# Package commands
# install neovim
# sudo emerge --ask app-editors/neovim
# Search for neovim package
# emerge --search neovim


# Fedora/Debian-style       Gentoo
# ------------------        -------------------------------
# apt update / dnf check     emerge --sync
# apt upgrade / dnf upgrade  emerge -avuDN @world
# apt autoremove             emerge -av --depclean
# fix library rebuilds       emerge -av @preserved-rebuild
# config merge               etc-update / dispatch-conf