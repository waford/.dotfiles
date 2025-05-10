#!/bin/bash 
dunstctl set-paused true
i3lock -c 000000 -n -f
wait 
dunstctl set-paused false
