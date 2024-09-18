#!/bin/sh

# defines the threshold
THRESHOLD=80

# thet the / usage
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "Warning: Disk usage is above $THRESHOLD%. Current usage: $USAGE%."
else
    echo "Disk usage is normal. Current usage: $USAGE%."
fi