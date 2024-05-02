loc="/sys/class/backlight/"
for devices in $loc*;
do
  brig="$devices/brightness"

  echo "$brig"
  if [[ $(cat $brig) -ne 0 ]]; then
    echo $(expr $(cat $brig) - 15) > $brig
  fi
done
