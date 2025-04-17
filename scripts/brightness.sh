#! /bin/bash

# xrandr variante (nutzt gamma)
#BRIGHTNESS=$(xrandr --verbose | grep $1 -A5 | tail -n1 | awk '{ print $2 }')
#
#echo $BRIGHTNESS
#
#NEWBRIGHTNESS=$(echo $BRIGHTNESS $2 | bc)
#echo New brightness: $NEWBRIGHTNESS
#
#xrandr --output $1 --brightness $NEWBRIGHTNESS

# $1 = 1,2
# $2 = +10,-10

BRIGHTNESS=$(ddcutil --display $1 getvcp 10 | awk '{print $9}' | sed 's/,//')
echo $BRIGHTNESS
NEWBRIGHTNESS=$(echo $BRIGHTNESS $2 | bc)
echo new brightness: $NEWBRIGHTNESS
ddcutil --display $1 setvcp 10 $NEWBRIGHTNESS

