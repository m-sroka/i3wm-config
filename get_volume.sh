#!/bin/bash
# echo `pactl list sinks | grep "^[[:space:]]*\ *Volume:" | awk '{print $5}'`

echo $(pactl list sinks | grep `pacmd stat | awk -F": " '/^Default sink name: /{print $2}'` -A 20 | grep -i '^\svolume'  | awk '{print $5}')
