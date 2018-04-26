#! /usr/bin/env bash
function main() {
    local file_root='/sys/class/backlight/intel_backlight/'
    local file_brightness="$file_root/brightness"
    local file_max="$file_root/max_brightness"
    local cur=$(cat "$file_brightness")
    local max=$(cat "$file_max")

    if [ ! -w "$file_brightness" ]; then
        logger "Can't set the new brightness, try with sudo or as root."
        exit 2
    fi

    new=$(($cur $1 $2))
    new=$(($new>$max?$max:$new))
    new=$(($new<0?0:$new))
    echo $new > "$file_brightness"
    echo "New brightness: $new/$max."
}

logger "RUNNING AS $(whoami)"
if [[ -z "$1" || -z "$2" ]]; then
    logger "Usage: brightness <-|+> <delta>"
    exit 1
fi

main $1 $2
