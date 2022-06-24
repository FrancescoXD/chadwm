#!/bin/bash

## Packages installer script
sudo pacman -Syu # first of all update your system!
sudo pacman -S dash imlib2 xorg-xsetroot rofi rust # rust is required by eww

# Install EWW
(
git clone https://github.com/elkowar/eww
cd eww
cargo build --release
cd target/release
chmod +x ./eww
sudo mv eww /usr/local/bin
)
