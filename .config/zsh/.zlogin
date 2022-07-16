export HISTFILE="$XDG_STATE_HOME"/zsh/history

# If running from tty1 start sway
[ "$(tty)" = "/dev/tty1" ] && exec sway
