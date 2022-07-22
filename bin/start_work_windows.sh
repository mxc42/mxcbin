#!/bin/bash

# https://manpages.ubuntu.com/manpages/trusty/man1/xdotool.1.html#window%20commands

window=$(xdotool search --name "YouTube")
xdotool windowmove --sync $window 1424 1880
xdotool windowsize --sync $window 752 492

window=$(xdotool search --name "Jitsi")
xdotool windowmove --sync $window 1424 1430
xdotool windowsize --sync $window 752 492
