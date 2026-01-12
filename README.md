# DevOps Automation Scripts

Basic Bash scripts for Linux server monitoring and maintenance.

## Scripts
- disk_check.sh: Monitors disk usage and alerts if threshold exceeds
- service_check.sh: Checks service status and validates service availability
- log_cleanup.sh: Safely identifies and cleans old log files with dry-run mode

## Usage
```bash
chmod +x *.sh
./disk_check.sh
./service_check.sh
sudo ./log_cleanup.sh
