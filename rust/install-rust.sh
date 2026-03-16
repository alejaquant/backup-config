#!/usr/bin/env bash

set -e

echo "Installing Rust..."

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

source $HOME/.cargo/env

rustup update

echo "Installing common Rust tools..."

cargo install \
    cargo-edit \
    cargo-watch \
    ripgrep \
    fd-find

echo "Rust installation completed"