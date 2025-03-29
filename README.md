update the public ip on openwrt

/etc/crontabs/root
0 */1 * * * /bin/ash /root/myip.sh

crontab example
5 */6 * * * /root/simple_ipdns_update.sh
0 20 * * * /root/leds_off.sh
