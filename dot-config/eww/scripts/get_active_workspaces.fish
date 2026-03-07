#!/usr/bin/env fish

# name as key

# swaymsg -t get_workspaces -r | jq '.[] | { (.name): { urgent: .urgent, focused: .focused }}' | jq -s -c '.'


# name as property

swaymsg -t get_workspaces -r | jq '.[] | { name: .name, urgent: .urgent, focused: .focused }' | jq -s -c '.'
