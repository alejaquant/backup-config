#!/usr/bin/env bash

set -e

echo "Installing programming languages..."

bash python/install-python.sh
bash rust/install-rust.sh

echo "Languages installed"
