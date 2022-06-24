#!/bin/bash

## Packages installer script
sudo pacman -Syu # first of all update your system!
sudo pacman -S dash imlib2 xorg-xsetroot rofi rustup # rust is required by eww

# Install EWW
(
    rustup default nightly # eww requires rust nightly
    git clone https://github.com/elkowar/eww eww-install
    cd eww-install
    cargo build --release
    cd target/release
    chmod +x ./eww
    sudo mv eww /usr/local/bin
    rustup default stable #go back...
)
rm -rf eww-install
