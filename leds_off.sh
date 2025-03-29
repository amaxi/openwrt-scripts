#!/bin/ash

echo 0 > /sys/class/leds/green:system/brightness
echo 0 > /sys/class/leds/green:wlan2g/brightness
echo 0 > /sys/class/leds/green:wlan5g/brightness
echo 0 > /sys/class/leds/ath9k-phy0/brightness
echo 0 >  /sys/class/leds/green:usb1/brightness
echo 0 >  /sys/class/leds/green:usb2/brightness
echo 0 >  /sys/class/leds/green:qss/brightness

exit 0
