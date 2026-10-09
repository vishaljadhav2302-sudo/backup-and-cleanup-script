#!/bin/bash

# Folder ani files chi naave set karuya
SOURCE_DIR="test_folder"
BACKUP_DIR="backups"
LOG_FILE="backup_cleanup.log"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="${BACKUP_DIR}/backup_${TIMESTAMP}.tar.gz"
DAYS_TO_KEEP=7

# Backup thevnyasaathi folder nassel tar navin banvuya
mkdir -p $BACKUP_DIR

echo "=============================================" | tee -a $LOG_FILE
echo "Backup and Cleanup Started: $(date)" | tee -a $LOG_FILE
echo "=============================================" | tee -a $LOG_FILE

# 1. Automated Backup Process
echo "--> Creating backup of $SOURCE_DIR folder..." | tee -a $LOG_FILE
tar -czf $BACKUP_FILE $SOURCE_DIR 2>> $LOG_FILE

if [ $? -eq 0 ]; then
    echo "[SUCCESS] Backup created successfully: $BACKUP_FILE" | tee -a $LOG_FILE
else
    echo "[FAILED] Backup failed!" | tee -a $LOG_FILE
fi

echo "---------------------------------------------" | tee -a $LOG_FILE

# 2. Disk Cleanup Process (7 divsanpeksha junya files)
echo "--> Searching for files older than $DAYS_TO_KEEP days in $SOURCE_DIR..." | tee -a $LOG_FILE

# find command waparun junya files delete karnyachi process
find $SOURCE_DIR -type f -mtime +$DAYS_TO_KEEP -exec rm -v {} \; >> $LOG_FILE

echo "[SUCCESS] Cleanup check completed." | tee -a $LOG_FILE
echo "=============================================" | tee -a $LOG_FILE
echo "Process finished. Logs saved in $LOG_FILE"
echo ""
