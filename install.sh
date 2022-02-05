# Fonts
mkdir -p ~/.local/share/fonts/
cp -r fonts/JetBrainsMono ~/.local/share/fonts/
cp -r fonts/MaterialDesignIcons ~/.local/share/fonts/

# Wallpapers and Xresources
mkdir $HOME/Wallpapers/
mkdir -p $HOME/Public/Xresources/nord/
mkdir $HOME/Public/Xresources/ocean/

cp -r wallpapers/* $HOME/Wallpapers/
cat config/nord-xresources/src/nord > $HOME/Public/Xresources/nord/.Xresources
cp config/material-ocean/.Xresources $HOME/Public/Xresources/ocean/

# Rofi
cp -r rofi $HOME/.config/

# Install chadwm
cd ..
cp chadwm $HOME/.config/
cd $HOME/.config/chadwm/chadwm/

make
sudo make install
make clean
cd ..

# Display manager
echo "Do you use a Display Manager? (y/n): "
echo -n "=> "
read -r dm

if [ $dm = "y" ] || [ $dm = "Y" ]; then
	sed -i "s/path/\/home\/$username\/.dwm\/autostart/g" dwm.desktop
	sudo mkdir /usr/share/xsessions/
	sudo cp chadwm.desktop /usr/share/xsessions/
fi
