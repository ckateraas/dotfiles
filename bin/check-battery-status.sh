#! /usr/bin/env bash

BATTERY_PERCENTAGE=$( upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk '{ print $2 }' | cut -d'%' -f1)

if [ "$BATTERY_PERCENTAGE" -lt "5" ]; then

  TIME_LEFT=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep time | awk '{ print $4 " " $5 }')
  notify-send -u critical "Battery is low!" "$TIME_LEFT remaining"

fi
