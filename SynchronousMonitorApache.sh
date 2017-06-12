#!/bin/sh
while inotifywait -e modify /var/log/apache2/access.log; do
  # if tail -n1 /var/log/apache2/access.log | grep httpd; then
    kdialog --msgbox "Hello From Apache!"
  # fi
done