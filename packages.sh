#!/bin/bash

## Packages installer script
sudo pacman -Syu # first of all update your system!
sudo pacman -S slock alsa alsa-utils picom feh rofi dash imlib2 xorg-xsetroot rofi rustup # rust is required by eww

echo "Do you need a WIFI GUI manager (Y/n)?:"
read -r wifim
if [ "$wifim" == "Y" ] || [ "$wifim" == "y" ]; then
    (
        git clone https://aur.archlinux.org/iwgtk.git
        cd iwgtk
        makepkg -si
    )
    rm -rf iwgtk
fi

# Install EWW
(
    sudo pacman -S gtk3 pango gdk-pixbuf2 cairo glib2 gcc-libs glibc
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
