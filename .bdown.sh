#! /bin/bash

max_brightness=$(cat /sys/class/backlight/intel_backlight/max_brightness)
brightness=$(cat /sys/class/backlight/intel_backlight/brightness)

if (($brightness>0))
then
     let brightness=$brightness-75

fi

sudo echo $brightness > /sys/class/backlight/intel_backlight/brightness
