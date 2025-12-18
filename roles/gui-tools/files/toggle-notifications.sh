#!/bin/bash

current=$(gsettings get org.gnome.desktop.notifications show-banners)

if [ "$current" = "true" ]; then
  gsettings set org.gnome.desktop.notifications show-banners false
  notify-send "🔕 Notifications disabled"
else
  gsettings set org.gnome.desktop.notifications show-banners true
  notify-send "🔔 Notifications enabled"
fi