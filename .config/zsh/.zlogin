export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_QPA_PLATFORM=wayland
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_DESKTOP=sway
export HISTFILE="$XDG_STATE_HOME"/zsh/history

# If running from tty1 start sway
[ "$(tty)" = "/dev/tty1" ] && exec sway
