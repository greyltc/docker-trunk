#!/usr/bin/env bash
set -o pipefail -e

pacman -Syu --noprogressbar --needed --noconfirm rust
su aurbuilder -c 'yes | yay -Syyu --noprogressbar --needed rust-wasm'
cargo install wasm-bindgen-cli
cargo install trunk
