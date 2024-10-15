#!/bin/bash

status=$(playerctl status 2> /dev/null)
if [[ $status != "Playing" ]]; then
    echo -n "^c#666666^"
fi

echo -n "$(playerctl metadata artist 2> /dev/null) - $(playerctl metadata title 2> /dev/null)"
echo -n "^d^"
