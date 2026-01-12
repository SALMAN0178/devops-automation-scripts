#!/bin/bash

SERVICE="nginx"
DATE=$(date "+%Y-%m-%d %H:%M:%S")

if ! systemctl list-unit-files | grep -q "^$SERVICE.service"; then
  echo "[$DATE] Service $SERVICE is not installed on this system"
  exit 1
fi

if systemctl is-active --quiet $SERVICE; then
  echo "[$DATE] $SERVICE is running"
else
  echo "[$DATE] $SERVICE is not running. Attempting restart..."
  systemctl restart $SERVICE

  if systemctl is-active --quiet $SERVICE; then
    echo "[$DATE] $SERVICE restarted successfully"
  else
    echo "[$DATE] Failed to restart $SERVICE"
  fi
fi

