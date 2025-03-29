#!/bin/ash

echo 0 > /sys/class/leds/tp-link:green:system/brightness
echo 0 > /sys/class/leds/tp-link:green:wan/brightness
echo 0 > /sys/class/leds/tp-link:green:lan1/brightness
echo 0 > /sys/class/leds/tp-link:green:lan2/brightness
echo 0 > /sys/class/leds/tp-link:green:lan3/brightness
echo 0 > /sys/class/leds/tp-link:green:lan4/brightness
echo 0 > /sys/class/leds/tp-link:green:qss/brightness
echo 0 > /sys/class/leds/tp-link:green:wlan2g/brightness
echo 0 > /sys/class/leds/ath9k-phy0/brightness
echo 0 > /sys/class/leds/ath9k-phy1/brightness

exit 0
