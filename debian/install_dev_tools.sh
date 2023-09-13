#/bin/bash

##############
### Install
##############


# Instlal common tools
sudo apt-get update 
sudo apt-get install -y git curl vim neovim jq net-tools


# SCM Breeze
sudo apt-get install ruby
git clone https://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh
source ~/.bashrc


# Install Haskell
sudo apt-get install -y build-essential libffi-dev libffi8ubuntu1 libgmp-dev libgmp10 libncurses-dev libncurses6 libtinfo6
source install_haskell.env
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
echo '. $HOME/.ghcup/env' >> $HOME/.bashrc


# Install Scala
sudo apt-get install openjdk-17-jdk
SCALA_VERSION=2.13.11
curl -fL https://github.com/coursier/coursier/releases/latest/download/cs-x86_64-pc-linux.gz | gzip -d > cs && chmod +x cs
./cs update
./cs install scala:$SCALA_VERSION 
./cs install scalac:$SCALA_VERSION
./cs install sbt
echo 'export PATH="$HOME/.local/share/coursier/bin:$PATH"' >> $HOME/.bashrc


##############
### Configure
##############

