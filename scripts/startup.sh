#!/bin/bash

XRESOURCESLOC="/home/seungheonoh/.Xresources"

xrdb $XRESOURCESLOC

cp $HOME/.config/i3/config /etc/i3/config

# Compton start
compton --config ~/.config/compton/compton.conf -b

# backgruond

# Monitor setup 
#xrandr --auto --output DP-2 --mode 2560x1440 --right-of HDMI-1 --primary
#xrandr --auto --output HDMI-0 --rotate right

