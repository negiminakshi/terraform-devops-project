#!/bin/bash

BACKUP_DIR=./backups

mkdir -p $BACKUP_DIR

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

docker exec hotel-postgres pg_dump \
    -U postgres \
    hotel_db \
    > $BACKUP_DIR/hotel_db_$TIMESTAMP.sql

echo "Backup completed successfully."
