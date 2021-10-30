# Run scripts/setup_vbox_post_install.sh if it's an install
# within VirtualBox

# Install desltop environment
sh scripts/setup_gui.sh

# Install dev tools
sh scripts/install_dev_tools.sh

# Other user tools
sh scripts/install_other_user_tools.sh
