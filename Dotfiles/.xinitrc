#!/bin/sh
#
# ~/.xinitrc
#
## Executed by startx (run your window manager from here)

#Monitor settingss
redshift &
xrandr --output DP-4 --scale 0.7x0.7

#Services
xautolock -time 10 -locker /home/comhack/.scripts/screenlock &
urxvtd -q -o -f &
udiskie &
xrdb -q &
nitrogen --restore &
#mpd &

#Disable CapsLock
setxkbmap -option ctrl:nocaps &

#Modmap
if [ -f $HOME/.Xmodmap ]; then
    /usr/bin/xmodmap $HOME/.Xmodmap
    fi

#Environments
exec i3
