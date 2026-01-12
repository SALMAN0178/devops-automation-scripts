#!/bin/bash

THRESHOLD=80
LOG_FILE="/var/log/disk_check.log"
DATE=$(date "+%Y-%m-%d %H:%M:%S")

USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "[$DATE] WARNING: Disk usage is ${USAGE}%" | tee -a $LOG_FILE
else
  echo "[$DATE] OK: Disk usage is ${USAGE}%" >> $LOG_FILE
fi

