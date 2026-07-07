#!/bin/bash

# Check if backup file is provided
if [ $# -ne 1 ]; then
    echo "Usage: ./restore.sh <backup_file.sql>"
    exit 1
fi

BACKUP_FILE=$1

# Check if the backup file exists
if [ ! -f "$BACKUP_FILE" ]; then
    echo "Error: Backup file '$BACKUP_FILE' not found!"
    exit 1
fi

echo "Restoring database from $BACKUP_FILE..."

docker exec -i hotel-postgres psql \
    -U postgres \
    -d hotel_db \
    < "$BACKUP_FILE"

if [ $? -eq 0 ]; then
    echo "Restore completed successfully."
else
    echo "Restore failed!"
fi
