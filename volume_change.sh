#!/bin/bash
stereo_sink=`pactl list short | grep stereo | head -n 1 | cut -f 1`
b_sink=`pactl list short | grep '08_A3_0B_08_7F_92' | head -n 1 | cut -f 1`
bluez_sink=`pactl list short | grep bluez_sink | head -n 1 | cut -f 1`

#pactl set-sink-volume $stereo_sink $1
#pactl set-sink-volume $b_sink $1
#pactl set-sink-volume $bluez_sink $1
pactl set-sink-volume @DEFAULT_SINK@ $1
