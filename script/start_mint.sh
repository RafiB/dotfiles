#!/bin/bash
sudo apt-get purge banshee libreoffice-* hexchat* pidgin* thunderbird* gimp* brasero* leafpad mtpaint simple-scan imagemagick sylpheed abiword gnumeric audacious
sudo add-apt-repository -y ppa:klaus-vormweg/awesome > /dev/null 2>&1
sudo apt-get update
sudo apt-get -y install awesome awesome-extra lua5.1 feh xfce4-power-manager-plugins
sudo apt-get -y install clang cmake
sudo apt-get -y install build-essential
sudo apt-get -y install cabal-install ghc
sudo apt-get -y install chromium-browser
sudo add-apt-repository -y ppa:git-core/ppa > /dev/null 2>&1
sudo apt-get update
sudo apt-get -y install git gitg bash-completion
sudo apt-get -y install mosh
sudo apt-get -y install pgf texlive-latex-extra texlive-xetex texlive-luatex lmodern
sudo apt-get -y install python-pip python-virtualenv python-dev pylint virtualenvwrapper
sudo apt-get -y install redshift
sudo apt-get -y install silversearcher-ag
sudo add-apt-repository -y ppa:shutter/ppa > /dev/null 2>&1
sudo apt-get update
sudo apt-get -y install shutter
sudo add-apt-repository -y ppa:pi-rho/dev > /dev/null 2>&1
sudo apt-get update
sudo apt-get install -y tmux
sudo apt-get -y install vim exuberant-ctags
sudo apt-get -y install zsh

# Change default shell to zsh
echo "Changing default shell to zsh for user rafi"
chsh -s /bin/zsh rafi

# Fonts for lualatex
luaotfload-tool --update
