#!/bin/bash

hc() {
  herbstclient "$@"
}

hc keyunbind --all

Mod=Mod1

# General usage commands
hc keybind $Mod-Shift-q quit
hc keybind $Mod-Shift-r reload
hc keybind $Mod-Shift-x chain , close , remove 
hc keybind $Mod-Shift-z close 
hc keybind $Mod-Return spawn kitty
hc keybind $Mod-r spawn rofi -show run

# focusing clients
hc keybind $Mod-Left  focus left
hc keybind $Mod-Down  focus down
hc keybind $Mod-Up    focus up
hc keybind $Mod-Right focus right 

# Moving clients
hc keybind $Mod-Shift-Left  shift left
hc keybind $Mod-Shift-Down  shift down
hc keybind $Mod-Shift-Up    shift up
hc keybind $Mod-Shift-Right shift right 

# splitting frames
# create an empty frame at the specified direction
hc keybind $Mod-u chain , split bottom 0.5 , focus down 
hc keybind $Mod-o chain , split right 0.5 , focus right 
# let the current frame explode into subframes
hc keybind $Mod-Control-space split explode

# resizing frames
resizestep=0.05
hc keybind $Mod-Control-Left    resize left +$resizestep
hc keybind $Mod-Control-Down    resize down +$resizestep
hc keybind $Mod-Control-Up      resize up +$resizestep
hc keybind $Mod-Control-Right   resize right +$resizestep

# tags
tag_names=( {1..9} )
tag_keys=( {1..9} 0  )

hc rename default "${tag_names[0]}" || true
for i in ${!tag_names[@]} ; do 
  hc add "${tag_names[$i]}"
  key="${tag_keys[$i]}"
  if ! [ -z "$key" ] ; then
    hc keybind "$Mod-$key" use_index "$i"
    hc keybind "$Mod-Shift-$key" move_index "$i"
  fi
done

# cycle through tags
hc keybind Control-Right use_index +1 --skip-visible
hc keybind Control-Left  use_index -1 --skip-visible

# layouting
hc keybind $Mod-Shift-r remove
#hc keybind $Mod-Shift-z chain , close , remove  
hc keybind $Mod-f fullscreen toggle

# focus
hc keybind $Mod-BackSpace   cycle_monitor
hc keybind $Mod-Tab         cycle_all +1
hc keybind $Mod-Shift-Tab   cycle_all -1
hc keybind $Mod-c cycle
hc keybind $Mod-i jumpto urgent

# Media
# Audio keys 
hc keybind XF86AudioRaiseVolume spawn /home/alek/Desktop/volume-notification-dunst/volume.sh up 
hc keybind XF86AudioLowerVolume spawn /home/alek/Desktop/volume-notification-dunst/volume.sh down 
hc keybind XF86AudioMute spawn /home/alek/Desktop/volume-notification-dunst/volume.sh mute
#hc keybind XF86AudioPlay spawn playerctl play-pause 
#hc keybind XF86AudioNext spawn playerctl next 
#hc keybind XF86AudioPrev spawn playerctl previous 

# Function keys 
hc keybind F12 spawn /home/alek/Desktop/volume-notification-dunst/volume.sh up
hc keybind F11 spawn /home/alek/Desktop/volume-notification-dunst/volume.sh down
hc keybind F10 spawn /home/alek/Desktop/volume-notification-dunst/volume.sh mute 
hc keybind F8 spawn playerctl play-pause
hc heybind F9 spawn playerctl next 
hc keybind F7 spawn playerctl previous  

# screenshot 
hc keybind $Mod-Shift-p spawn sh /home/alek/.config/herbstluftwm/dunst-screenshot.sh 
hc keybind $Mod-Shift-e spawn rofi -show power-menu -modi power-menu:rofi-power-menu
