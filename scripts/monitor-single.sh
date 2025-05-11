#! /bin/bash

MON1=DisplayPort-0
MON2=DisplayPort-1

echo $HOSTNAME dl*

case $HOSTNAME in
  dl*)  MON1=HDMI-2
        MON2=HDMI-3 ;;
esac

xrandr --output $MON2 --off

notify-send "Single monitor setup: Using $MON1."
