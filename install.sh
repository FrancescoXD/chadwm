mkdir $HOME/Wallpapers
cp wallpapers/wall.jpg $HOME/Wallpapers
mv chadwm/.dwm $HOME/
chmod +x $HOME/.dwm/autostart
chmod +x $HOME/.dwm/bar
sudo mv chadwm/layoutmenu /usr/local/bin
cd chadwm
cd dwm
make
sudo make install

