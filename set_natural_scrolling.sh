#!/bin/bash
touchpad_id=`exec xinput list | grep -i touchpad | cut -f 2 | cut -f 2 -d'='`
exec xinput --set-prop $touchpad_id "libinput Natural Scrolling Enabled" 1

