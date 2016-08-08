#!/bin/sh

# Set screen resolution to be easier on eyes if farther away
if [[ $1 == "far" ]];
then
    xrandr --output eDP-1 --mode 1408x792_60.00;
fi

# Set screen resolution as default when close enough to see
if [[ $1 == "close" ]];
then
    xrandr --output eDP-1 --mode 1920x1080;
fi
