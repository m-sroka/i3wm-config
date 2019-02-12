#!/bin/bash

used=`free -h | sed -n '2 p' | awk '{print $3}' | tr -d 'G'`
avail=`free -h | sed -n '2 p' | awk '{print $2}' | tr -d 'G'`

printf '%s / %s GB' $used $avail
