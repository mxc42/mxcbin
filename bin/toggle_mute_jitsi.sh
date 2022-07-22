#!/bin/bash

set -e

send_to_window() {
    # due to "-e" we'll stop if zoom window is not found.
    window=$(xdotool search --name "$2")
    cur_active=$(xdotool getactivewindow)
    cur_focus=$(xdotool getwindowfocus)

    xdotool windowfocus "$window"
    xdotool windowactivate "$window"
    # without this sleep zoom doesn't get the key press.
    sleep 0.3
    xdotool key "$1"

    xdotool windowactivate "$cur_active"
    xdotool windowfocus "$cur_focus"
}

send_to_window "m" "Jitsi Meet"
