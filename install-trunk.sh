#!/usr/bin/env bash

pacman -Syu --noprogressbar --needed --noconfirm rust
su aurbuilder -c 'yay -Syyu --noprogressbar --needed --noconfirm rust-wasm'
cargo install wasm-bindgen-cli
cargo install trunk
