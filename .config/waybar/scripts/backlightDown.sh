brightness=$(printf '%.0f\n' $(light))

if [[ $brightness == 1 ]]; then
  exit
fi

light -U 1

if [[ $brightness < 1 ]]; then
  light -S 1
fi
