#!/bin/sh
while inotifywait -e modify /var/log/messages; do
  if tail -n1 /var/log/messages | grep httpd; then
    kdialog --msgbox "Hello From Apache!"
  fi
done