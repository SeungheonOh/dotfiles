#!/bin/bash


killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1;done



# For multiple monitor setup
if type "xrandr"; then
	for m in $(xrandr --query | grep "connected" | cut -d" " -f1); do
		MONITOR=$m polybar bar &
	done
else 
	polybar bar &
fi	
	
