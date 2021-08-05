# Install packages
sudo pacman -S xorg-xsetroot xorg-xbacklight acpi pacman-contrib rofi feh

# Install xmenu
git clone https://aur.archlinux.org/xmenu.git
cd xmenu
makepkg -si
cd ..

# Install st (siduck76's build)
echo "Do you want to have transparency in st? You need also picom (y/n)"
echo -n "=> "
read -r transparency

git clone https://github.com/siduck76/st
cd st

if [ $transparency = "y" ] || [ $transparency = "Y" ]; then
	sed -i 's/float alpha = 1.0;/float alpha = 0.9;/g' config.def.h
fi
make
sudo make install
cd ..

# Picom
echo "Do you want to use picom? (y/n)"
echo -n "=> "
read -r picom

if [ $picom = "y" ] || [ $picom = "Y" ]; then
	git clone https://aur.archlinux.org/picom-ibhagwan-git.git
	cd picom-ibhagwan-git
	makepkg -si
	sed -i 's/\#picom \&/picom \&/g' ~/.dwm/autostart
fi
