#!/bin/bash

LOG_DIR="/var/log"
DAYS=7
MODE=${1:-dry-run}
DATE=$(date "+%Y-%m-%d %H:%M:%S")

echo "[$DATE] Log cleanup started in $MODE mode"

if [ "$MODE" = "delete" ]; then
  find $LOG_DIR -type f -name "*.log" -mtime +$DAYS -exec rm -f {} \; 2>/dev/null
  echo "[$DATE] Old log files deleted"
else
  find $LOG_DIR -type f -name "*.log" -mtime +$DAYS 2>/dev/null
  echo "[$DATE] Dry-run completed (no files deleted)"
fi

