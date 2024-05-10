#!/usr/bin/env bash

if [ "$1" = "up" ]; then
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%+
elif [ "$1" = "down" ]; then
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%-
else
    exit -1
fi