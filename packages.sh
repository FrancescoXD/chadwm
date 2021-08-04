# Install packages
sudo pacman -S xorg-xsetroot xorg-xbacklight acpi pacman-contrib rofi feh

# Install xmenu
git clone https://aur.archlinux.org/xmenu.git
cd xmenu
makepkg -si
cd ..

# Install st (siduck76's build)
git clone https://github.com/siduck76/st
cd st
make
sudo make install
cd ..
