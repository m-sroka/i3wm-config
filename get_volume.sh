#!/bin/bash
echo `pactl list sinks | grep "^[[:space:]]*\ *Volume:" | awk '{print $5}'`
