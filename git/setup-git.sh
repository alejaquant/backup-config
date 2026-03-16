#!/usr/bin/env bash

read -p "Git name: " name
read -p "Git email: " email

git config --global user.name "$name"
git config --global user.email "$email"
git config --global core.editor "code --wait"

echo "Git configured successfully."