mkdir $HOME/Wallpapers
mkdir -p $HOME/Public/Xresources/nord
cat nord-xresources/src/nord > $HOME/Public/Xresources/nord/.Xresources
cp wallpapers/wall.jpg $HOME/Wallpapers
cp -r chadwm/.dwm $HOME/
chmod +x $HOME/.dwm/autostart
chmod +x $HOME/.dwm/bar
chmod +x $HOME/.dwm/layoutmenu.sh
chmod +x $HOME/.dwm/save_tagpreview
chmod +x $HOME/.dwm/tag_preview
cd chadwm
cd dwm
make
sudo make install
