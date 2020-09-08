#!/usr/bin/env bash
xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update
brew install bash
brew install git
brew install automake
brew install binutils
brew install gcc
brew install telnet
brew install wget
brew install vim
brew install gnu-sed
brew install htop
brew install iproute2mac
brew install jq
brew install netcat
brew install p7zip
brew install pwgen
brew install watch
brew install tree
brew install shellcheck

brew cask install android-file-transfer
brew cask install vlc
brew cask install tableplus
brew cask install kap
brew cask install postman
brew cask install tunnelblick
brew cask install sensiblesidebuttons
brew cask install mos
brew cask install burp-suite
brew cask install wireshark
brew cask install virtualbox
brew cask install rectangle
brew cask install google-chrome
brew cask install iterm2 # Natural text editing
brew cask install visual-studio-code
brew cask install mnemosyne

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
