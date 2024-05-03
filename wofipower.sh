#!/bin/bash

entries="🔑 Logout\n👢 Reboot\n⏻ Shutdown"

selected=$(echo -e $entries|wofi --width 200 --height 170 --dmenu --cache-file /dev/null | awk '{print tolower($2)}')

case $selected in
  logout)
    loginctl terminate-user mark;;
  reboot)
    exec systemctl reboot;;
  shutdown)
    exec systemctl poweroff -i;;
esac
