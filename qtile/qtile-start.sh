#!/bin/sh

export QT_AUTO_SCREEN_SCALE_FACTOR=1
#export GDK_SCALE=2
#export GDK_DPI_SCALE=0.5

#xrandr --dpi 160
BIG=DisplayPort-0
SMALL=DisplayPort-1
xrandr --dpi 144
xrandr --output ${BIG} --primary --left-of ${SMALL} --pos 0x0
xrandr --output ${SMALL} --pos 3840x1080 --scale 1x1
xrandr --output ${SMALL} --brightness 0.5

exec qtile start
