# Set up GRUB, in virtualbox
grub-install --target=i386-pc /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
