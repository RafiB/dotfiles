#!/bin/bash
sudo apt-get purge banshee libreoffice-* hexchat* pidgin* thunderbird* gimp* brasero*
sudo add-apt-repository -y ppa:klaus-vormweg/awesome > /dev/null 2>&1
sudo apt-get update
sudo apt-get install awesome awesome-extra lua5.1 feh xfce4-power-manager
sudo apt-get install clang cmake
sudo apt-get install build-essential
sudo apt-get install cabal-install ghc
sudo apt-get install chromium-browser
sudo apt-get install clementine
sudo add-apt-repository -y ppa:git-core/ppa > /dev/null 2>&1
sudo apt-get update
sudo apt-get install git gitg bash-completion
sudo apt-get install mosh
sudo apt-get install nemo-dropbox
sudo apt-get install pgf texlive-latex-extra texlive-xetex lmodern
sudo apt-get install python-pip python-virtualenv python-dev pylint virtualenvwrapper
sudo apt-get install redshift
sudo apt-get install silversearcher-ag
sudo add-apt-repository -y ppa:shutter/ppa > /dev/null 2>&1
sudo apt-get update
sudo apt-get install shutter
sudo apt-get install vim exuberant-ctags
sudo apt-get install zsh

# Change default shell to zsh
echo "Changing default shell to zsh for user rafi"
chsh -s /bin/zsh rafi

# Stop nemo from changing the desktop
gsettings set org.nemo.desktop show-desktop-icons false
