#!/usr/bin/env bash

set -e

echo "Updating Ubuntu..."
sudo apt update && sudo apt upgrade -y

echo "Installing base tools..."
sudo apt install -y \
  build-essential \
  pkg-config \
  libssl-dev \
  git \
  curl \
  unzip \
  docker.io

echo "Base installation completed"