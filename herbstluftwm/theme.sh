#!/bin/bash

# Function to make commands less annoying
hc() {
    herbstclient "$@"
}

hc attr theme.tiling.reset 1
hc attr theme.floating.reset 1
hc set focus_crosses_monitor_boundaries 1
hc set frame_border_active_color '#161320'
hc set frame_border_normal_color '#191919'
hc set frame_bg_normal_color '#161320'
hc set frame_bg_active_color '#161320'
hc set frame_border_width 0.5
hc set always_show_frame 0 
hc set frame_bg_transparent 1 ##
#hc set frame_active_opacity 100 
#hc set frame_normal_opacity 15 ## 
hc set frame_transparent_width 5
hc set frame_gap 4

hc set focus_follows_mouse on

hc attr theme.title_height 0
hc attr theme.padding_top 0
hc attr theme.active.color '#96CDFB'
hc attr theme.normal.color '#3b4252'
hc attr theme.urgent.color '#F28FAD'
hc attr theme.inner_width 0
hc attr theme.inner_color black
hc attr theme.border_width 1
hc attr theme.floating.border_width 1
hc attr theme.floating.padding_top 0
hc attr theme.floating.outer_width 0
hc attr theme.floating.outer_color "#161320"
hc attr theme.active.inner_color '#161320'
hc attr theme.active.outer_color '#161320'
hc attr theme.background_color '#161320'

hc set window_gap 1
hc set frame_padding 0
hc set smart_window_surroundings 0
hc set smart_frame_surroundings 1 
hc set mouse_recenter_gap 0

hc unrule -F 
hc rule focus=on
