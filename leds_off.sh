#!/bin/ash

echo 0 > /sys/class/leds/tp-link:blue:system/brightness
echo 0 > /sys/class/leds/tp-link:blue:wan/brightness
echo 0 > /sys/class/leds/tp-link:blue:lan1/brightness
echo 0 > /sys/class/leds/tp-link:blue:lan2/brightness
echo 0 > /sys/class/leds/tp-link:blue:lan3/brightness
echo 0 > /sys/class/leds/tp-link:blue:lan4/brightness
echo 0 > /sys/class/leds/tp-link:blue:qss/brightness
echo 0 > /sys/class/leds/tp-link:blue:wlan2g/brightness
echo 0 > /sys/class/leds/ath9k-phy0/brightness
echo 0 > /sys/class/leds/ath9k-phy1/brightness

exit 0
