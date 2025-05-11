#! /bin/bash

MON1=DisplayPort-0
MON2=DisplayPort-1

case $HOSTNAME in
  dl*)  MON1=HDMI-2
        MON2=HDMI-3 ;;
esac

xrandr --output $MON2 --auto --right-of $MON1

notify-send "Dual monitor setup: Using $MON1 and $MON2."
