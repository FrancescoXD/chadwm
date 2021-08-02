# chadwm (ArchLinux)

<img src="https://github.com/siduck76/chadwm/blob/main/screenshots/col_layout.png">

- NOTE: This is vanilla dwm bar (status2d patch for setting colors) not dwmblocks or polybar.

## To make installation easier and faster I made two scripts:
1. install.sh (contains the setup instructions)
2. packages.sh (install the needed packages)

To use it you need to ```chmod +x``` the scripts.

# Requirements

```
# sudo pacman -S xorg-xsetroot python-pywal pacman-contrib
# yay -S xmenu nerd-fonts-jetbrains-mono ttf-material-design-icons
```

# Setup

```
$ mkdir Wallpapers
$ cd chadwm
$ cp wallpapers/wall.jpg ~/Wallpapers
$ mv .dwm ~/
$ chmod +x ~/.dwm/bar
$ chmod +x ~/.dwm/autostart
# sudo mv layoutmenu.sh /usr/local/bin
$ cd dwm
$ make
# sudo make install
```
- autostart file must be adjusted for your liking!
- start dwm with exec ~/.dwm/autostart (NOT EXEC DWM) cuz autostart already runs dwm at the last , or make a dwm.desktop ( in /usr/share/xsessions folder ) replace the exec value from dwm to ~/.dwm/autostart.

# Credits 

- Thanks a lot to [eProTaLT83](https://www.reddit.com/user/eProTaLT83) ( he has modified many dwm bar patches like barpadding,statuspadding, systray to work properly with status2d) and as implemented most of my ideas and created patches for them!
- @fitrh helped with [colorful tag patch](https://github.com/fitrh/dwm/issues/1)

# Patches

- barpadding 
- bottomstack
- cfacts
- dragmfact 
- dragcfact (took from bakkeby's build)
- fibonacii
- gaplessgrid
- horizgrid
- layoutmenu 
- movestack 
- vanity gaps
- colorful tags
- statuspadding 
- status2d
- tatami 
- underline tags
- notitle
