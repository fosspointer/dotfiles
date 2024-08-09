#!/usr/bin/env bash

wp_devices() {
    wpctl status | awk '/Sinks:/{flag=1; next} /Sources:/{flag=0} flag' | awk -F'.' '{print $1}' | grep -o '[0-9]\+'
}

if [ "$1" = "up" ]; then
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 4%+
elif [ "$1" = "down" ]; then
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 4%-
else
    exit -1
fi

volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | sed 's/[^0-9.]//g')
wp_devices | while IFS= read -r line; do
    wpctl set-volume "$line" $volume
done