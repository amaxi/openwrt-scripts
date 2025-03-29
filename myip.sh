#!/bin/ash

DOMAIN="HOST.ipdns.hu"
USERNAME="USR"
PASSWORD="PASS"
MYIP=$(curl https://ipinfo.io/ip)
MYDNSIP=$(nslookup "$DOMAIN" | awk '/^Address: / { print $2 }'|grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}')

echo "$MYIP - $MYDNSIP"

if [ "$MYIP" != "$MYDNSIP" ]; then
  curl http://"$USERNAME":"$PASSWORD"@update.ipdns.hu/update?hostname="$DOMAIN"&myip="$MYIP"
  echo "$(date) $MYIP" > /root/myip.txt
else
  echo "$(date) No IP ADDR update needs"
fi

TUN_ADDR=$(ip address show dev tun0| grep inet | head -1|grep 10.8.0.1|wc -l)
if [ "$TUN_ADDR" -ne "1" ]; then
  echo "$(date) openvpn restart" >> /root/openvpn_restart.txt
  service openvpn restart
else
  echo "$(date) No need to restart the openvpn service"
fi

exit 0