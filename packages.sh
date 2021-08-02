# Install packages
sudo pacman -S xorg-xsetroot pacman-contrib

# Install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Install AUR packages
yay -S xmenu nerd-fonts-jetbrains-mono ttf-material-design-icons

# Install st
git clone https://github.com/siduck76/st
cd st
make
sudo make install
