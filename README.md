# chadwm (ArchLinux)

<img src="https://github.com/siduck76/chadwm/blob/main/screenshots/col_layout.png">

- NOTE: This is vanilla dwm bar (status2d patch for setting colors) not dwmblocks or polybar.

## To make installation easier and faster I made two scripts:
1. install.sh (contains the setup instructions)
2. packages.sh (install the needed packages)

To use it you need to ```chmod +x``` the scripts.

# Tag preview (while hovering tag icon)

https://user-images.githubusercontent.com/59060246/128050994-17f46934-6604-4430-bece-f60b0700b6be.mp4

# Requirements

## Fonts

- Powerlevel10k (Zsh)
- JetBrains Mono (Code)

```
# sudo pacman -S xorg-xsetroot pacman-contrib rofi scrot feh
# yay -S xmenu nerd-fonts-jetbrains-mono ttf-material-design-icons
```

There is also a ```fonts``` dir if you don't want to use the aur.

# Setup

```
$ cp -r fonts/* ~/.local/share/fonts
$ mkdir $HOME/Wallpapers
$ cat nord-xresources/src/nord > $HOME/Public/Xresources/nord/.Xresources
$ cp wallpapers/wall.jpg $HOME/Wallpapers
$ cp -r chadwm/.dwm $HOME/
$ chmod +x $HOME/.dwm/autostart
$ chmod +x $HOME/.dwm/bar
$ chmod +x $HOME/.dwm/layoutmenu.sh
$ chmod +x $HOME/.dwm/save_tagpreview
$ chmod +x $HOME/.dwm/tag_preview
$ cd chadwm
$ cd dwm
$ make
# sudo make install
```
- autostart file must be adjusted for your liking!
- start dwm with ```exec ~/.dwm/autostart``` or make a ```dwm.desktop``` (in /usr/share/xsessions folder) replace the exec value from dwm to ```~/.dwm/autostart```.

# Credits 

- HUGE THANKS to [eProTaLT83](https://www.reddit.com/user/eProTaLT83). I wanted certain features in dwm and he implemented my ideas and created patches for me! I   cant even count the number of times he has helped me :v 
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
