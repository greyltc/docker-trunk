#!/usr/bin/env bash
set -e
set -u
set -o pipefail

# build and install rust with wasm32-unknown-unknown target
pacman -Syu --noprogressbar --needed --noconfirm rust
su aurbuilder -c 'yes | yay -Syyu --removemake --noprogressbar --needed rust-wasm'

# build and install trunk
su aurbuilder -c 'yay -Syyu --noconfirm --removemake --noprogressbar --needed trunk'

# clean cache
su aurbuilder -c 'yay -Sc --noconfirm'
