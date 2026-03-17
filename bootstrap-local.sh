#!/usr/bin/env bash

set -e

echo "Starting system setup..."

bash scripts/install-base.sh
bash brew/install-brew.sh
bash scripts/install-zsh.sh
bash scripts/install-tools.sh
bash git/setup-git.sh
bash scripts/install-ssh.sh
bash scripts/install-languages.sh

echo "Setup completed successfully!"
