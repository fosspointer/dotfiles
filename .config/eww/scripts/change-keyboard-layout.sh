#!/usr/bin/env bash

if [ "$1" = "up" ]; then
    hyprctl switchxkblayout usb-usb-keyboard next
elif [ "$1" = "down" ]; then
    hyprctl switchxkblayout usb-usb-keyboard prev
else
    exit -1
fi