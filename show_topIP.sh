#!/bin/bash
docker exec -it webserver cat /var/log/nginx/access.log | awk '{ print $1}' | sort | uniq -c | sort -nr | head -n 10
