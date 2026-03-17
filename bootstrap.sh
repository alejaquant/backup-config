#!/usr/bin/env bash

set -e

REPO_URL="https://github.com/alejaquant/backup-config.git"
INSTALL_DIR="$HOME/.setup-temp"

echo "Cloning repository..."

rm -rf "$INSTALL_DIR"
git clone "$REPO_URL" "$INSTALL_DIR"

cd "$INSTALL_DIR"

bash bootstrap-local.sh
