#!/usr/bin/env bash
set -e
set -u
set -o pipefail

pacman -Syu --noprogressbar --needed --noconfirm rust
su aurbuilder -c 'yes | yay -Syyu --removemake --noprogressbar --needed rust-wasm'

su aurbuilder -c 'yay -Syyu --noconfirm --removemake --noprogressbar --needed trunk'

su aurbuilder -c 'yay -Sc && rm -rf ~/.cache/yay'
