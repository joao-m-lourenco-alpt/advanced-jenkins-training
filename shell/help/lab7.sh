#!/bin/sh

WEBSITE="https://github.com/devopsdelivery/yoda"
LOG_FILE="website_status.log"

RESPONSE=$(curl -o /dev/null -s -w "%{http_code}\n" "$WEBSITE")

if [ "$RESPONSE" -eq 200 ]; then
    echo "$(date +"%Y-%m-%d %H:%M:%S") - $WEBSITE is up." >> $LOG_FILE
else
    echo "$(date +"%Y-%m-%d %H:%M:%S") - WARNING: $WEBSITE is down!" >> $LOG_FILE
fi