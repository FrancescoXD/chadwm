#!/bin/sh
xrdb merge $HOME/.Xresources 
xbacklight -set 10 &
feh --bg-fill $HOME/.wallpapers/purple_moon.png &
xset r rate 200 50 &
picom &

$HOME/.config/chadwm/scripts/bar.sh &
while type dwm >/dev/null; do dwm && continue || break; done
