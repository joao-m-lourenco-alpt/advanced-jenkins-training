#!/bin/sh

SERVICE="postgresql"
LOG_FILE="./service_monitor.log"

if ! systemctl is-active --quiet $SERVICE; then
    systemctl start $SERVICE
    echo "$(date +"%Y-%m-%d %H:%M:%S") - $SERVICE service was down, started it." >> $LOG_FILE
else
    echo "$(date +"%Y-%m-%d %H:%M:%S") - $SERVICE is running fine." >> $LOG_FILE
fi
