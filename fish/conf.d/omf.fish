# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

alias nf "neofetch --kitty /home/alek/Pictures/spike.jpg"
alias show "kitty +kitten icat"
alias ssh "kitty +kitten ssh"
alias bootcamp "cd /media/alek/'Boot Camp'/.section39"
alias projects "cd ~/Desktop/projects && ls"
alias reload "clear && swift build"
alias settings "env XDG_CURRENT_DESKTOP=GNOME gnome-control-center"
alias fw "feh --bg-fill ~/Pictures/Wallpapers/firewatch.png ~/Pictures/Wallpapers/nordfjord.png"
