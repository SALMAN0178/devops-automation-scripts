# DevOps Automation Scripts

A collection of basic Bash and Python automation scripts for Linux server monitoring and operational maintenance.  
This repository demonstrates hands-on DevOps fundamentals including scripting, logging, scheduling, and system operations.

---

## 📌 Scripts Included

### 1. disk_check.sh
- Monitors root (`/`) disk usage
- Logs disk usage with timestamps
- Cron-ready for scheduled execution

### 2. service_check.sh
- Validates whether a Linux service exists and is running
- Safely attempts restart only when applicable
- Prevents false-positive automation failures

### 3. log_cleanup.sh
- Identifies old log files older than a defined number of days
- Supports dry-run mode for safe execution
- Optional delete mode for controlled cleanup

### 4. disk_check.py
- Python-based disk usage monitoring script
- Logs results with timestamps
- Demonstrates basic Python automation for system tasks

---

## 🚀 Usage

```bash
chmod +x *.sh

./disk_check.sh
sudo ./service_check.sh
sudo ./log_cleanup.sh
python3 disk_check.py
