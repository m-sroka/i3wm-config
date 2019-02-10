#!/bin/bash

i3status -c $HOME/.config/i3/i3status.conf | while :
do
        read line
        volume=`$HOME/.config/i3/get_volume.sh`
        brightness=`$HOME/.config/i3/get_brightness.sh`
        echo "BR: $brightness% | VOL: $volume | $line" || exit 1
done
