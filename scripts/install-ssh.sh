#!/usr/bin/env bash

set -e

echo "Generating SSH key..."

#read -p "Enter your GitHub email: " email

#ssh-keygen -t ed25519 -C "$email"

ssh-keygen -t ed25519 -C "alejquant@gmail.com"

echo "Starting ssh-agent..."

eval "$(ssh-agent -s)"

echo "Adding key..."

ssh-add ~/.ssh/id_ed25519

echo "Your public key is:"

cat ~/.ssh/id_ed25519.pub

echo ""
echo "Add this key to GitHub:"
echo "https://github.com/settings/keys"
