#!/usr/bin/env bash
#xcode-select --install
sudo spctl --master-disable

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update

leaves="./leaves.txt"
while IFS= read -r l; do
  brew install "$l"
done <"$leaves"
exit 0

casks="./casks.txt"
while IFS= read -r c; do
  brew install "$c"
done <"$casks"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
