#####################################
## Please read for VirtualBox install
#####################################
## It's recommended to ssh into the vbox machine and
## edit the pacman mirrorlist before running this script
########################################

# Set up fonts
echo "Setting up fonts..."
sh scripts/setup_fonts.sh

# Install desltop environment
echo "Setting up GUI..."
sh scripts/setup_gui.sh

# Install dev tools
echo "Setting up dev tools..."
sh scripts/install_dev_tools.sh

# Other user tools
echo "Setting up other tools like messenger..."
sh scripts/install_other_user_tools.sh

# Start GUI
echo "Starting lighdm or reboot the system"
echo "sudo systemctl start lightdm"
# sudo systemctl start lightdm

# Uncomment the following for a VirtualBox install
# sh scripts/setup_vbox_post_install.sh
