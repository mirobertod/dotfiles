#!/usr/bin/env bash

# script exit when a command fails
set -o errexit
# catch a command error in pipe execution
set -o pipefail
# exit when try to use undeclared variables
set -o nounset
# print and expand each command to stdout before executing it
# set -o xtrace

#xcode-select --install
sudo spctl --master-disable

# === brew ===
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update
xargs brew install <leaves.txt
xargs brew install --cask <casks.txt

# === vim ===
cp ./.vimrc ~/.vimrc

# === shell ===
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
gsed -i 's/plugins=(git)/plugins=(git gcloud macos kubectl)/g' ~/.zshrc
{
  printf "\n"
  printf "HISTSIZE=10000000\n"
  printf "SAVEHIST=10000000\n"
  printf "unsetopt share_history\n"
} >>~/.zshrc
