# Dev and build tools
sudo pacman -Syu --noconfirm base-devel community/github-cli emacs wget

# Haskell tools
sudo pacman -Syu --noconfirm community/stack

# Python tools
sudo pacman -Syu --noconfirm community/python-poetry community/python-pipx extra/python-pip

# JVM tools
sudo pacman -Syu --noconfirm extra/jdk-openjdk community/scala community/sbt

# VSCode
sudo pacman -Syu --noconfirm community/code

# Install SCM Breeze for git shortcuts
git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh
source ~/.bashrc   # or source "${ZDOTDIR:-$HOME}/.zshrc"

# Install powerline-shell for pretty prompt
git clone https://github.com/powerline/fonts.git --depth=1
fonts/install.sh
rm -rf fonts

pip install powerline-shell
echo "PATH=~/.local/bin:$PATH" >> ~/.bashrc
cat scripts/powerline-shell.sh >> ~/.bashrc
source ~/.bashrc

# Install Spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
