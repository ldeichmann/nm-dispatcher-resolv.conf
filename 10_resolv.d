#!/bin/bash
RESOLVCONF=$(type -p resolvconf)

case $2 in

vpn-up)
  R=""
  if [ "$VPN_IP4_DOMAINS" ]; then
    R="search "
    for DS in $VPN_IP4_DOMAINS ; do
      R="${R} $DS"
    done
  R="${R}
"
  fi

  for NS in $VPN_IP4_NAMESERVERS ; do
    R="${R}nameserver $NS
"
  done
  echo -n "$R" | $RESOLVCONF -x -a "${VPN_IP_IFACE}.inet"
  ;;
vpn-down)
  $RESOLVCONF -d "${VPN_IP_IFACE}.inet"
  ;;
esac

exit 0

