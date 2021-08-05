mkdir -p ~/.local/share/fonts
cp -r fonts/JetBrainsMono/* ~/.local/share/fonts
cp -r fonts/MaterialDesignIcons/* ~/.local/share/fonts
mkdir $HOME/Wallpapers
mkdir -p $HOME/Public/Xresources/nord
cat nord-xresources/src/nord > $HOME/Public/Xresources/nord/.Xresources
cp -r wallpapers/* $HOME/Wallpapers
cp -r chadwm/.dwm $HOME/
chmod +x $HOME/.dwm/autostart
chmod +x $HOME/.dwm/bar
chmod +x $HOME/.dwm/layoutmenu.sh
cd chadwm/dwm
username=$(whoami)
sed -i "s/username/$username/g" config.def.h
make
sudo make install
cd ../../

echo "Do you use a Display Manager? (y/n): "
echo -n "=> "
read -r dm

if [ $dm = "y" ] || [ $dm = "Y" ]; then
	sudo cp dwm.desktop /usr/share/xsessions
fi
