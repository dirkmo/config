#!/bin/sh

export QT_AUTO_SCREEN_SCALE_FACTOR=1
#export GDK_SCALE=2
#export GDK_DPI_SCALE=0.5

/home/dirk/build/suckless/dwm-bar/dwm_bar.sh &
feh --bg-scale $(~/.local/bin/bing-wallpaper.sh)
dunst &

exec dwm

