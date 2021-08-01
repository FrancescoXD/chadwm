# Install packages
sudo pacman -S xorg-xsetroot python-pywal alacritty

# Install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Install AUR packages
yay -S xmenu nerd-fonts-jetbrains-mono ttf-material-design-icons
