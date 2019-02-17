#!/bin/bash
stereo_sink=`pactl list short | grep stereo | head -n 1 | cut -f 1`

pactl set-sink-volume $stereo_sink $1
