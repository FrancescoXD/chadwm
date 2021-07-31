# chadwm

<img src="https://github.com/siduck76/chadwm/blob/main/screenshots/col_layout.png">

- NOTE: This is vanilla dwm bar (status2d patch for setting colors) not dwmblocks or polybar. 

# Requirements

- xsetroot package ( status2d uses this to add colors on dwmbar)
- xmenu (for layoutmenu)
- JetbrainsMono Nerd Font and Material design icon font

# Setup

```
$ mv .dwm ~/
$ chmod +x ~/.dwm/bar
$ chmod +x ~/.dwm/autostart
# sudo mv layoutmen.sh /usr/local/bin
$ cd chadwm
# sudo make install
```
- autostart file must be adjusted for your liking!
- start dwm with exec ~/.dwm/autostart (NOT EXEC DWM) cuz autostart already runs dwm at the last , or change your dwm.desktop ( should be in /usr/share/xsessions folder ) replace the exec value from dwm to ~/.dwm/autostart.

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
