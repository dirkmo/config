#! /bin/bash

MON1=DisplayPort-0
MON2=DisplayPort-1

if [ "$HOSTNAME" == dl* ]; then
    MON1=HDMI-2
    MON2=HDMI-3
fi

xrandr --output $MON2 --off

notify-send "Single monitor setup: Using $MON1."
