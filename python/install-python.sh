#!/usr/bin/env bash

set -e

echo "Installing Python tools..."

sudo apt update
sudo apt install -y \
    python3 \
    python3-pip \
    python3-venv \
    python3-dev \
    python3-full \

# echo "Upgrading pip..."

# python3 -m venv ~/.venvs/base

# source ~/.venvs/base/bin/activate

# pip install --upgrade pip

# pip install \
#     ipykernel \
#     numpy \
#     pandas \
#     matplotlib \
#     seaborn \
#     jupyter \
#     polars \
#     pyarrow

echo "Python setup completed"