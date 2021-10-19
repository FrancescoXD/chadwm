# chadwm (ArchLinux)

<img src="https://github.com/siduck76/chadwm/blob/screenshots/screenshots/col_layout.png">

- NOTE: This is vanilla dwm bar (status2d patch for setting colors) not dwmblocks or polybar.

## To make installation easier and faster I made two scripts:

1. packages.sh (install the needed packages)
2. install.sh (contains the setup instructions)

To use it you need to ```chmod +x``` the scripts. Probably the scripts are more updated than the README.

# Requirements

## Dwm

- xorg / xorg-server
- Xlib
- imlib2

## Fonts

- Powerlevel10k (Zsh)
- JetBrains Mono (Code)
- JetBrains Mono Nerd Font
- Material Design Icons

There is also a ```fonts``` dir if you don't want to use the aur.

## Packages

- xsetroot
- pacman-contrib
- rofi
- feh
- st (siduck76's build)

```
sudo pacman -S xorg-xsetroot pacman-contrib rofi feh
```

To install ```st```:
```
$ git clone https://github.com/siduck76/st
$ cd st
$ make
# sudo make install
```

### Optional

- xbacklight (brightness status)
- acpi (battery status)
- picom-ibhagwan-git (see [St transparency](#st-transparency))

```
sudo pacman -S xorg-xbacklight acpi
```

# Setup

- Change ```username``` in ```chadwm/dwm/config.def.h``` with your username.

```
$ mkdir -p ~/.local/share/fonts
$ cp -r fonts/JetBrainsMono/* ~/.local/share/fonts
$ cp -r fonts/MaterialDesignIcons/* ~/.local/share/fonts
$ mkdir $HOME/Wallpapers
$ mkdir -p $HOME/Public/Xresources/nord
$ cat config/nord-xresources/src/nord > $HOME/Public/Xresources/nord/.Xresources
$ cp -r config/rofi $HOME/.config/
$ cp -r wallpapers/* $HOME/Wallpapers
$ cp -r .dwm $HOME/
$ chmod +x $HOME/.dwm/autostart
$ chmod +x $HOME/.dwm/bars/gruvchad.sh
$ chmod +x $HOME/.dwm/bars/nord.sh
$ chmod +x $HOME/.dwm/bars/onedark.sh
$ chmod +x $HOME/.dwm/layoutmenu.sh
$ cd chadwm
$ make
$ sudo make install
$ make clean
```

- ```autostart``` file must be adjusted for your liking!
- If you are using ```xinit```, start dwm with ```exec ~/.dwm/autostart``` or copy ```dwm.desktop``` in ```/usr/share/xsessions``` folder.

## Shell packages

- [logo-ls](https://github.com/Yash-Handa/logo-ls)
- Zsh
- [Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh)

You can find ```.zshrc``` in ```config``` folder.

## St transparency

You need a compositor, in this case we are going to use a ```picom``` fork.

To install ```picom-ibhagwan-git```:
```
$ git clone https://aur.archlinux.org/picom-ibhagwan-git.git
$ cd picom-ibhagwan-git
$ makepkg -si
```

Then go to ```st``` folder, open the ```config.def.h```, on line 119 change ```float alpha = 1.0;``` to something like ```float alpha = 0.8;```.

# Credits 

- HUGE THANKS to [eProTaLT83](https://www.reddit.com/user/eProTaLT83). I wanted certain features in dwm and he implemented my ideas and created patches for me! I can't even count the number of times he has helped me :v
- @fitrh helped with [colorful tag patch](https://github.com/fitrh/dwm/issues/1)

# Patches

- barpadding 
- bottomstack
- cfacts
- dragmfact 
- dragcfact (took from [bakkeby's build](https://github.com/bakkeby/dwm-flexipatch))
- fibonacii
- gaplessgrid
- horizgrid
- movestack 
- vanity gaps
- colorful tags
- statuspadding 
- status2d
- tatami 
- underline tags
- notitle
