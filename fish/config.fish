set -g -x fish_greeting ''
starship init fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/alek/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

set PATH /home/alek/Swift/usr/bin $PATH
set PATH $HOME/.cargo/bin $PATH
