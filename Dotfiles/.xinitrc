#!/bin/sh
#
# ~/.xinitrc
#
## Executed by startx (run your window manager from here)

#Monitor settingss
# sh randr.sh &
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

#Fonts
#xset +fp /usr/share/fonts/local
#xset fp rehash
#while true; do
#   xsetroot -name "$( date +"%F %R" )"
#      sleep 1m    # Update time every minute
#      done &

#Environments
exec i3
#exec dwm
#exec cinnamon-session﻿


