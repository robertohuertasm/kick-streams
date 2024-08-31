#!/bin/bash

# Install cargo crates needed for substrate development
cargo install cargo-contract contracts-node

# Solana
apt-get update
apt-get install -y \
    build-essential \
    pkg-config \
    libudev-dev llvm libclang-dev \
    protobuf-compiler libssl-dev

sh -c "$(curl -sSfL https://release.anza.xyz/stable/install)"
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
solana --version
# Anchor
cargo install --git https://github.com/coral-xyz/anchor --tag v0.30.1 anchor-cli
anchor --version
