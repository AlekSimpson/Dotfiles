#!/bin/bash

if maim --select /home/alek/Pictures/Screenshots/screenshot.png; then 
	notify-send "Screenshot" "Successful!"
else
	notify-send -u critical "Screenshot" "Failed!"
fi
