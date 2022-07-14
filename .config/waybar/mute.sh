if [[ `pacmd list-sinks | awk '/muted/ { print $2 }'` == 'no' ]]
then amixer -q sset Master mute
else amixer -q sset Master unmute && amixer -q sset Headphone unmute  && amixer -q sset Speaker unmute 
fi
