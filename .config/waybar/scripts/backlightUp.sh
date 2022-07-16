dir=/sys/class/backlight/intel_backlight
shift=0.02

read maxBrightness < $dir/max_brightness
read brightness < $dir/brightness

if [[ $brightness == $maxBrightness ]]; then
  exit
fi

brightness=$( echo "$brightness + $shift * $maxBrightness" | bc )

if [[ $brightness > $maxBrightness ]]; then
  brightness=$maxBrightness
fi
printf '%.0f\n' $brightness

printf '%.0f\n' $brightness > $dir/brightness

