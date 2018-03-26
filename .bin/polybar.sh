#!/usr/bin/env bash
#
# Start polybar on all connected monitors.

source $HOME/.profile

for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
  MONITOR=$m polybar --reload bar &
done
