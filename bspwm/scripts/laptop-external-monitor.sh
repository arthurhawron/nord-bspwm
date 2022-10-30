#!/bin/bash
laptop_external_monitor=$(xrandr --query | grep 'HDMI-1')
if [[ $laptop_external_monitor = *connected* ]]; then
	xrandr --output eDP-1 --off --output HDMI-1 --primary --mode 1920x1080 --pos 1925x0 --rotate normal --output DP-1 --off
fi
