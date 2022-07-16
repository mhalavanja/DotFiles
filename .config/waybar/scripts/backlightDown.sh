dir=/sys/class/backlight/intel_backlight
shift=0.02

read brightness < $dir/brightness
read maxBrightness < $dir/max_brightness

if [[ $brightness == 1 ]]; then
  exit
fi

brightness=$( echo "$brightness - $shift * $maxBrightness" | bc )

if [[ $brightness < 1 ]]; then
  brightness=1
fi
printf '%.0f\n' $brightness

printf '%.0f\n' $brightness > $dir/brightness

