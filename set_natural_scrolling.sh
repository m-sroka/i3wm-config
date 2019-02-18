#!/bin/bash
touchpad_id=`exec xinput list | grep -i touchpad | cut -f 2 | cut -f 2 -d'='`
xinput --set-prop $touchpad_id "libinput Natural Scrolling Enabled" 1

usb_receivers_ids=`exec xinput list | grep -i "usb receiver" | cut -f 2 | cut -f 2 -d'='`
for id in $usb_receivers_ids
do
  exec xinput --set-prop $id "libinput Natural Scrolling Enabled" 1
done

