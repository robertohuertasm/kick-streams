#!/bin/bash

echo "Starting setup script..."

# Install cargo crates needed for substrate development
echo "Installing cargo crates..."
sudo $(which cargo) install cargo-contract contracts-node

# Solana
echo "Updating apt-get..."
sudo apt-get update
echo "Installing Solana dependencies..."
sudo apt-get install -y \
    build-essential \
    pkg-config \
    libudev-dev llvm libclang-dev \
    protobuf-compiler libssl-dev

echo "Installing Solana CLI..."
sh -c "$(curl -sSfL https://release.anza.xyz/stable/install)"
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
solana --version

# Anchor
echo "Installing Anchor CLI..."
sudo $(which cargo) install --git https://github.com/coral-xyz/anchor --tag v0.30.1 anchor-cli
anchor --version

echo "Setup script completed."
