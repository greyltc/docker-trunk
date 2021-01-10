#!/usr/bin/env bash
set -o pipefail
set -o errexit
set -o nounset
set -o verbose
set -o xtrace

# build and install rust with wasm32-unknown-unknown target
pacman -Syu --noprogressbar --needed --noconfirm rust
sudo -u aurbuilder -D~ bash -c "yes | yay -Syu --removemake --needed --noprogressbar rust-wasm"

# clean cache
sudo -u aurbuilder -D~ bash -c "yes | yay -Scc"

# build and install trunk
sudo -u aurbuilder -D~ bash -c "yay -Syu --removemake --needed --noprogressbar --noconfirm trunk"

# clean cache
sudo -u aurbuilder -D~ bash -c "yes | yay -Scc"
