#! /usr/bin/env bash
function change_brightness() {
    local backlight_dir='/sys/class/backlight/intel_backlight/'
    local brightness_file="$backlight_dir/brightness"
    local current_brightness=$(cat "$brightness_file")
    local max_brightness=$(cat "$backlight_dir/max_brightness")

    new_brightness=$(($current_brightness $1 $2))
    new_brightness=$(($new_brightness > $max_brightness ? $max_brightness : $new_brightness))
    new_brightness=$(($new_brightness < 0 ? 0 : $new_brightness))

    echo $new_brightness > "$brightness_file"
    echo "New brightness: $new_brightness/$max_brightness."
}

if [[ -z "$1" || -z "$2" ]]; then
    echo "Usage: brightness <-|+> <delta>"
    exit 1
fi

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi


change_brightness $1 $2
