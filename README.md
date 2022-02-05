# chadwm (ArchLinux)

<img src='https://i.redd.it/t1pvmqlq3oc81.png'>

[Wallpapers](https://github.com/aynp/dracula-wallpapers)

## To make installation easier and faster I made two scripts:

1. packages.sh (install the needed packages)
2. install.sh (contains the setup instructions)

To use it you need to ```chmod +x``` the scripts.

# Requirements

- dash (shell)
- imlib2 
- xsetroot package ( status2d uses this to add colors on dwmbar)
- JetbrainsMono Nerd Font (or any nerd font) and Material design icon font

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

Just use these scripts:
1. packages.sh (install the needed packages)
2. install.sh (contains the setup instructions)

Example:

```
$ chmod +x packages.sh
$ ./packages.sh
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

# Recompile 

- You need to recompile dwm after every change you make in its src code.

```
cd ~/.config/chadwm/chadwm
rm config.h
sudo make install
```

# Change themes 

- Bar  : in bar.sh and config.def.h
- eww  : in eww.scss
- rofi : in config.rasi 

# Credits 

- HUGE THANKS to [eProTaLT83](https://www.reddit.com/user/eProTaLT83). I wanted certain features in dwm like tabbar in monocle , tagpreview etc and he implemented my ideas and created patches for me! I cant even count the number of times he has helped me :v 
- @fitrh helped with [colorful tag patch](https://github.com/fitrh/dwm/issues/1)
- [6gk](https://github.com/6gk/fet.sh), eww's pure posix fetch functions taken from here

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
- underline tags
- notitle
