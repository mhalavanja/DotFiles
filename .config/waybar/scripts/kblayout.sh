language=`swaymsg -t get_inputs | jq -r '.[0] | .xkb_active_layout_name'`

if [[ $language ==  'English (US)' ]]
then swaymsg input type:keyboard xkb_layout hr
else swaymsg input type:keyboard xkb_layout us
fi
