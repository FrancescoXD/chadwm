mkdir $HOME/Wallpapers
cp wallpapers/wall.jpg $HOME/Wallpapers
cp -r chadwm/.dwm $HOME/
chmod +x $HOME/.dwm/autostart
chmod +x $HOME/.dwm/bar
sudo cp chadwm/layoutmenu.sh /usr/local/bin
cd chadwm
cd dwm
make
sudo make install
