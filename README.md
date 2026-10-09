# Automated Backup and Disk Cleanup Script

## Description
This shell script automates the process of taking compressed backups of a specified directory and cleans up files older than 7 days. This reflects real maintenance automation performed by DevOps engineers in production environments.

## Setup & Usage
1. Make the script executable:
   `chmod +x backup_cleanup.sh`
2. Run the script:
   `./backup_cleanup.sh`

## Features & Thresholds
- **Automated Backup:** Creates a timestamped `.tar.gz` compressed backup of the target directory.
- **Disk Cleanup:** Automatically finds and removes files older than 7 days to free up disk space.
- **Logging:** All actions (success/failure) are recorded with timestamps in `backup_cleanup.log`.# backup-and-cleanup-script
