#!/usr/bin/env bash

set -e

echo "Installing Zsh..."

sudo apt install -y zsh

echo "Installing Oh My Zsh..."

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing Powerlevel10k..."

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "Setting zsh as default shell via .bashrc..."

echo 'exec zsh' >> ~/.bashrc

echo "Starting zsh..."

zsh
