#!/bin/sh
while inotifywait -e modify /var/log/apache2/other_vhosts_access.log; do
  # if tail -n1 /var/log/apache2/access.log | grep httpd; then
    echo "Event Occurred"
  # fi
done
