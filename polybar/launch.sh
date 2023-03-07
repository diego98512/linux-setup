#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch all bars
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar DP1 2>&1 | tee -a /tmp/polybar1.log & disown
polybar DP2 2>&1 | tee -a /tmp/polybar2.log & disown
polybar DP0 2>&1 | tee -a /tmp/polybar3.log & disown
polybar HDMI 2>&1 | tee -a /tmp/polybar4.log & disown

echo "Bars launched..."
