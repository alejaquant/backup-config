#!/usr/bin/env bash

set -e

echo "Installing CLI tools with Homebrew..."

brew install \
  starship \
  eza \
  bat \
  fzf \
  zoxide \
  atuin \
  carapace \
  zsh-autocomplete \
  zsh-autosuggestions \
  zsh-syntax-highlighting

echo "Tools installation completed"