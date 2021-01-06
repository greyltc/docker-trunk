#!/usr/bin/env bash

su aurbuilder -c 'yay -Syyu --noprogressbar --needed --noconfirm rust-wasm'
cargo install wasm-bindgen-cli
cargo install trunk
