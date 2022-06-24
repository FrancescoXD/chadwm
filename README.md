# chadwm (Archlinux fast install)

<img src='https://i.redd.it/t1pvmqlq3oc81.png'>

## Tag preview (while hovering tag icon)

https://user-images.githubusercontent.com/59060246/128050994-17f46934-6604-4430-bece-f60b0700b6be.mp4

## Requirements (or just start `packages.sh` script)

- dash (shell)
- imlib2
- xsetroot package (status2d uses this to add colors on dwmbar)
- JetbrainsMono Nerd Font or any nerd font but dont forget to set it in `config.def.h`
- Materiald design icon font - [link](https://github.com/Templarian/MaterialDesign-Font/blob/master/MaterialDesignIconsDesktop.ttf)
- Make sure to setup your terminal's theme accordingly do chadwm's theme such as nord, onedark etc...

## Install

Simply download thhe repo:

```shell
git clone https://github.com/FrancescoXD/chadwm.git --depth 1 ~/.config/chadwm
cd ~/.config/chadwm/chadwm
```

And now if you want to skip all these parts below just start the installer script:

```shell
chmod +x install.sh
./install.sh
```

# Run chadwm

## With startx

```shell
startx ~/.config/chadwm/scripts/run.sh
```

## With sx

```shell
sx sh ~/.config/chadwm/scripts/run.sh
```

## With a Display Manager

```shell
sudo mkdir /usr/share/xsessions/ # if it doesn't exist
sudo mv chadwm.desktop /usr/share/xsessions/
```

# Recompile

You need to recompile dwm after every change you make to its source code.

```
cd ~/.config/chadwm/chadwm
make clean
sudo make install
```

# Change themes (default: catpuccin)

- Bar  : in `bar.sh` (line 9) and `config.def.h` (line 35)
- eww  : in `eww.scss` (line 1)
- rofi : in `config.rasi` (line 15)

# Eww

First, make sure you have copied the eww directory to your config:

```
cp -r ~/.config/chadwm/eww ~/.config/
```

To launch the eww widget, you need the following command:

```
eww open eww
```

- If you use alsa to manage your audio, instead of pulseaudio or pipewire, you can also launch an alsa widget:

```
eww open alsa-gui
```

- It could be a good idea to add these lines to your autostart file, located at `~/.config/chadwm/scripts/autostart`

# Credits

- HUGE THANKS to [eProTaLT83](https://www.reddit.com/user/eProTaLT83). I wanted certain features in dwm like tabbar in monocle, tagpreview, etc... and he implemented my ideas and created patches for me! I can't even count the number of times he has helped me :v 
- @fitrh helped with [colorful tag patch](https://github.com/fitrh/dwm/issues/1)
- [6gk](https://github.com/6gk/fet.sh), eww's pure posix fetch functions taken from here
- [mafetch](https://github.com/fikriomar16/mafetch), modified version of this was used as fetch in the screenshots

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
- [preserveonrestart](https://github.com/PhyTech-R0/dwm-phyOS/blob/master/patches/dwm-6.3-patches/dwm-preserveonrestart-6.3.diff). This patch doesnt let all windows mix up into tag 1 after restarting dwm.
