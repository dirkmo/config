#! /bin/bash

MON1=DisplayPort-0
MON2=DisplayPort-1
xrandr --output $MON2 --auto --right-of $MON1

