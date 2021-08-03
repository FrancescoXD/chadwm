# Install packages
sudo pacman -S xorg-xsetroot xorg-xbacklight acpi pacman-contrib rofi feh

# Install st (siduck76's build)
git clone https://github.com/siduck76/st
cd st
make
sudo make install
