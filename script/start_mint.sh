#!/bin/bash
sudo apt-get purge banshee libreoffice-* hexchat* pidgin* thunderbird* gimp* brasero*
sudo add-apt-repository -y ppa:klaus-vormweg/awesome > /dev/null 2>&1
sudo apt-get update
sudo apt-get install awesome awesome-extra lua5.1 feh xfce4-power-manager
sudo apt-get install build-essential
sudo apt-get install cabal-install ghc
sudo apt-get install chromium-browser
sudo apt-get install clementine
sudo add-apt-repository -y ppa:git-core/ppa > /dev/null 2>&1
sudo apt-get update
sudo apt-get install git gitg bash-completion
sudo apt-get install nemo-dropbox
sudo apt-get install pgf texlive-latex-extra
sudo apt-get install python-pip python-virtualenv python-dev pylint virtualenvwrapper
sudo apt-get install redshift
sudo apt-get install rxvt-unicode
sudo add-apt-repository -y ppa:shutter/ppa > /dev/null 2>&1
sudo apt-get update
sudo apt-get install shutter
sudo apt-get install vim exuberant-ctags

# Gnome-terminal solarized colours
git clone https://github.com/sigurdga/gnome-terminal-colors-solarized.git ~/.dotfiles/gnome-terminal-colors-solarized

ln -s ~/.dotfiles/gnome-terminal-colors-solarized/set_dark.sh ~/bin/set_dark
ln -s ~/.dotfiles/gnome-terminal-colors-solarized/set_light.sh ~/bin/set_light

# Change default shell to zsh
echo "Changing default shell to zsh for user rafi"
chsh -s /bin/zsh rafi
