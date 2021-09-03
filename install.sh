mkdir -p ~/.local/share/fonts
cp -r fonts/JetBrainsMono/* ~/.local/share/fonts
cp -r fonts/MaterialDesignIcons/* ~/.local/share/fonts

mkdir $HOME/Wallpapers
mkdir -p $HOME/Public/Xresources/nord
mkdir $HOME/Public/Xresources/ocean

cat config/nord-xresources/src/nord > $HOME/Public/Xresources/nord/.Xresources
cp config/material-ocean/.Xresources $HOME/Public/Xresources/ocean

cp -r config/rofi $HOME/.config/
cp -r wallpapers/* $HOME/Wallpapers
cp -r .dwm $HOME/

chmod +x $HOME/.dwm/autostart
chmod +x $HOME/.dwm/bars/gruvchad.sh
chmod +x $HOME/.dwm/bars/nord.sh
chmod +x $HOME/.dwm/bars/onedark.sh
chmod +x $HOME/.dwm/layoutmenu.sh

cd chadwm
username=$(whoami)
sed -i "s/username/$username/g" config.def.h
make
sudo make install
make clean
cd ..

echo "Do you use a Display Manager? (y/n): "
echo -n "=> "
read -r dm

if [ $dm = "y" ] || [ $dm = "Y" ]; then
	sed -i "s/path/\/home\/$username\/.dwm\/autostart/g" dwm.desktop
	sudo mkdir /usr/share/xsessions/
	sudo cp dwm.desktop /usr/share/xsessions/
fi
