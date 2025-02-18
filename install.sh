#!/bin/bash

## Installer script to make things easier

# Ask for layout
echo "us English (US)"
echo "it Italian"
echo "fr French"
echo "> Type your layout: "
read -r kbl
sed -i "s/KBL/$kbl/g" scripts/run.sh

# Chmod all script
chmod +x scripts/bar.sh
chmod +x scripts/run.sh
chmod +x scripts/fetch
chmod +x scripts/bar_themes/*

# Copy fonts
fonts_dir=$HOME/.local/share/fonts/
mkdir -p $fonts_dir
cp fonts/MaterialDesignIconsDesktop.ttf $fonts_dir
cp -r fonts/JetBrainsMono $fonts_dir
fc-cache -f -v

# Wallpapers and Xresources
cp .Xresources $HOME/
cp -r .wallpapers $HOME/

# Copy dirs to correct location
cp -r eww $HOME/.config/
cp -r rofi $HOME/.config/

# Make display manager config
sed -i "s/user/$(whoami)/g" chadwm.desktop
sudo mkdir /usr/share/xsessions/
sudo cp chadwm.desktop /usr/share/xsessions/

# Install
cd chadwm
sudo make install
make clean
