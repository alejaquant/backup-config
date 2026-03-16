#!/usr/bin/env bash

set -e

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo "Starting system setup..."

bash "$ROOT_DIR/scripts/install-base.sh"

bash "$ROOT_DIR/brew/install-brew.sh"

bash "$ROOT_DIR/scripts/install-zsh.sh"

bash "$ROOT_DIR/scripts/install-tools.sh"

bash "$ROOT_DIR/git/setup-git.sh"

bash "$ROOT_DIR/scripts/install-ssh.sh"

bash "$ROOT_DIR/scripts/install-languages.sh"

echo "Setup completed successfully!"