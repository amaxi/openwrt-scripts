#!/bin/ash

IP=$(ifconfig eth0.2|grep "inet addr:"|awk '{print $2}'|awk -F":" '{print $2}')
curl http://USERNAME:PASSWORD@update.ipdns.hu/update?hostname=HOSTNAME.ipdns.hu&myip="$IP"
echo "$(date) - $IP" >> /root/ddns.log

exit 0
