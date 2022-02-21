#!/bin/bash

hc() {
  herbstclient "$@"
}

hc detect_monitors

hc rule windowtype~'_NET_WM_WINDOW_TYPE_(NOTIFICATION|DOCK|DESKTOP|UTILITY)' manage=off

~/.config/polybar/launch

nm-applet &

xrandr --output HDMI-A-0 --primary --right-of DisplayPort-0 --output DisplayPort-0 --rotate left 
#feh ~/Pictures/Wallpapers/wall1.png --bg-fill ~/Pictures/Wallpapers/evening-sky.png 
#feh ~/Pictures/Wallpapers/desktopImage.jpeg --bg-fill ~/Pictures/Wallpapers/wall1.png
feh ~/Pictures/Wallpapers/desktopImage.jpeg --bg-fill ~/Pictures/Wallpapers/tokyowall.jpg
hc set_monitors 1080x1920+0+0 3840x2120+1080+38 # 3840x2110 50 
signal-desktop --start-in-tray
#ipfs daemon

hc set tree_style '╾│ ├└╼─┐'

hc unlock

hc unrule --all
hc rule focus=on # switch to new clients by default
