FROM rust:latest

# targets
RUN rustup target add wasm32-unknown-unknown
RUN rustup target add wasm32-wasi


# install cargo tools
RUN cargo install cargo-make cargo-watch

# # substrate ink!
# RUN cargo install cargo-contract contracts-node

# # solana deps
# RUN apt-get update && apt-get install -y \
#   build-essential \
#   pkg-config \
#   libudev-dev llvm libclang-dev \
#   protobuf-compiler libssl-dev

# # solana cli
# RUN sh -c "$(curl -sSfL https://release.anza.xyz/stable/install)"
# ENV PATH="$HOME/.local/share/solana/install/active_release/bin:${PATH}"

# # anchor cli
# RUN cargo install --git https://github.com/coral-xyz/anchor --tag v0.30.1 anchor-cli

# # Install Wasmtime
# RUN curl https://wasmtime.dev/install.sh -sSf | bash
# ENV PATH="$HOME/.wasmtime/bin:${PATH}"

# # Install tmux
# RUN apt-get install -y tmux

# # Install NVM
# RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# # Set up NVM environment variables
# ENV NVM_DIR="/root/.nvm"
# ENV NODE_VERSION="14.17.0"
# RUN . "$NVM_DIR/nvm.sh" && nvm install $NODE_VERSION && nvm alias default $NODE_VERSION && nvm use default

# # Add NVM to PATH
# ENV PATH="$NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH"

