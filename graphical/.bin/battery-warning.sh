#!/bin/bash

BATTINFO=`acpi -b`
if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | cut -f 5 -d " "` < 00:15:00 ]] ; then
  username=$(/usr/bin/whoami)
  pid=$(pgrep -u $username dunst)
  dbus=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$pid/environ | sed 's/DBUS_SESSION_BUS_ADDRESS=//' )
  DBUS_SESSION_BUS_ADDRESS=$dbus /usr/bin/notify-send "low battery" "$BATTINFO"
fi
