# 1. Boot in UEFI mode
# 2. Mount UEFI partition
mount /dev/sdax /efi
grub-install --target=x86_64-efi --efi-directory=/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
