#!/usr/bin/env bash

if [ "$1" = "up" ]; then
    # Increase the volume by 0.1
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%+
elif [ "$1" = "down" ]; then
    # Decrease the volume by 0.1
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%-
else
    exit -1
fi