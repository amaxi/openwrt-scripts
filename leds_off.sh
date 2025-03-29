#!/bin/ash

echo 0 > /sys/class/leds/green:system/brightness
echo 0 > /sys/class/leds/green:wlan2g/brightness
echo 0 > /sys/class/leds/green:wlan5g/brightness
echo 0 > /sys/class/leds/ath9k-phy0/brightness

exit 0
