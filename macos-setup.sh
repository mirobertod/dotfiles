#!/usr/bin/env bash
xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update
brew install bash
brew install git
brew cask install rectangle
brew cask install google-chrome
brew cask install iterm2 # Natural text editing
brew cask install visual-studio-code

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
