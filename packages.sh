# Install packages
sudo pacman -S xorg-xsetroot pacman-contrib rofi feh picom

# xbacklight package
echo "Do you need xbacklight? It is used to display brightness status (Y/n)"
echo -n "=> "
read -r xbacklight
if [ $xbacklight = "y" ] || [ $xbacklight = "Y" ]; then
	sudo pacman -S xorg-xbacklight
fi

# acpi package
echo "Do you need acpi? It is used to display battery status (Y/n)"
echo -n "=> "
read -r battery
if [ $battery = "y" ] || [ $battery = "Y" ]; then
	sudo pacman -S acpi
fi

# Install xmenu
git clone https://aur.archlinux.org/xmenu.git
cd xmenu
makepkg -si
cd ..

# Install st (siduck76's build)
echo "Do you want to have transparency in st? You need also picom (Y/n)"
echo -n "=> "
read -r transparency

git clone https://github.com/siduck76/st
cd st
if [ $transparency = "y" ] || [ $transparency = "Y" ]; then
	sed -i 's/float alpha = 1.0;/float alpha = 0.8;/g' config.def.h
fi
make
sudo make install
cd ..

# Picom
echo "Do you want to use picom? (Y/n)"
echo -n "=> "
read -r picomt

if [ $picomt = "y" ] || [ $picomt = "Y" ]; then
	sed -i 's/\#picom \&/picom \&/g' ~/.dwm/autostart
fi
