# chadwm (ArchLinux)

<img src="https://github.com/siduck76/chadwm/blob/main/screenshots/col_layout.png">

- NOTE: This is vanilla dwm bar (status2d patch for setting colors) not dwmblocks or polybar.

## To make installation easier and faster I made two scripts:
1. install.sh (contains the setup instructions)
2. packages.sh (install the needed packages)

To use it you need to ```chmod +x``` the scripts.

# Requirements

## Fonts

- Powerlevel10k (Zsh)
- JetBrains Mono (Code)
- JetBrains Mono Nerd Font
- Material Design Icons

## Packages

- xsetroot
- pacman-contrib
- rofi
- feh
- xmenu
- st (siduck76's build)
- xbacklight
- acpi

```
# sudo pacman -S xorg-xsetroot xorg-xbacklight acpi pacman-contrib rofi feh
```
To install ```xmenu```:
```
$ git clone https://aur.archlinux.org/xmenu.git
$ cd xmenu
$ makepkg -si
```

There is also a ```fonts``` dir if you don't want to use the aur.

# Setup

- Change ```username``` in ```chadwm/dwm/config.def.h``` with your username.
```
$ cp -r fonts/* ~/.local/share/fonts
$ mkdir $HOME/Wallpapers
$ cat nord-xresources/src/nord > $HOME/Public/Xresources/nord/.Xresources
$ cp wallpapers/wall.jpg $HOME/Wallpapers
$ cp -r chadwm/.dwm $HOME/
$ chmod +x $HOME/.dwm/autostart
$ chmod +x $HOME/.dwm/bar
$ chmod +x $HOME/.dwm/layoutmenu.sh
$ cd chadwm
$ cd dwm
$ make
# sudo make install
```
- ```autostart``` file must be adjusted for your liking!
- Start dwm with ```exec ~/.dwm/autostart``` or copy ```dwm.desktop``` in ```/usr/share/xsessions``` folder.

# Credits 

- HUGE THANKS to [eProTaLT83](https://www.reddit.com/user/eProTaLT83). I wanted certain features in dwm and he implemented my ideas and created patches for me! I can't even count the number of times he has helped me :v
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
