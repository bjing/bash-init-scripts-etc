# Automated (semi) Arch Linux Installation

## Official Installation Guide
Follow [official installaton guide](https://wiki.archlinux.org/title/installation_guide#Network_configuration) if you want to manually install everything.

## Automated Method

### Install from LiveCD

- Boot into live cd/usb
- Checkout this repo
    ```sh
    git clone https://github.com/bjing/bash-init-scripts-etc.git
    ```
- Use fdisk to set up root and swap partitions
- Run the pre-chroot script.
    ```sh
    cd bash-init-scripts-etc/arch
    ./setup_pre_chroot.sh swap_partition root_partition
    ```

### Chroot Into New Installation
The setup_pre_chroot.sh would have put us into a chroot prompt

- We need vim for file editing
    ```sh
    pacman -Sy vim
    ```
- Make sure relevant locales in `/etc/locale.gen` have been uncommented
- Run the script. If installing within VirtualBox, make sure to pass `vbox` to `./setup_during_chroot.sh`, or pass `uefi` to it.
    ```sh
    cd bash-init-scripts-etc/arch
    ./setup_during_chroot.sh vbox|uefi
    reboot
    ```

### Boot into the Fresh Install
Login as the newly created user, and run the following to finish installation.
```sh
git clone https://github.com/bjing/bash-init-scripts-etc.git
cd bash-init-scripts-etc/arch

# If using vbox, edit ./setup_first_boot.sh before running
./setup_first_boot.sh
```
