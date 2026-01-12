#!/usr/bin/env python3
import shutil
from datetime import datetime

THRESHOLD = 80
LOG_FILE = "/tmp/disk_check_python.log"

total, used, free = shutil.disk_usage("/")
usage_percent = int((used / total) * 100)
date = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

with open(LOG_FILE, "a") as f:
    if usage_percent > THRESHOLD:
        f.write(f"[{date}] WARNING: Disk usage is {usage_percent}%\n")
    else:
        f.write(f"[{date}] OK: Disk usage is {usage_percent}%\n")

print(f"Disk usage checked: {usage_percent}%")

