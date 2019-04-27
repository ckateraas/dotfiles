#! /usr/bin/env bash

TIME_LEFT=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep time | awk '{ print $4 " " $5 }')
notify-send -u normal "Time to battery is empty:" "$TIME_LEFT"
