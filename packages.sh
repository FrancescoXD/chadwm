# Install packages
sudo pacman -S xorg-xsetroot pacman-contrib rofi feh

# Install st
git clone https://github.com/siduck76/st
cd st
make
sudo make install
