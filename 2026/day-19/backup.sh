#!/bin/bash

SOURCE=$1
DEST=$2

if [ ! -d "$SOURCE" ]; then
    echo "Source directory does not exist"
    exit 1
fi

mkdir -p "$DEST"

DATE=$(date +%Y-%m-%d)

BACKUP_FILE="$DEST/backup-$DATE.tar.gz"

tar -czf "$BACKUP_FILE" "$SOURCE"

if [ -f "$BACKUP_FILE" ]; then
    echo "Backup successful"
else
    echo "Backup failed"
    exit 1
fi

SIZE=$(du -sh "$BACKUP_FILE" | awk '{print $1}')

echo "Archive: $BACKUP_FILE"
echo "Size: $SIZE"

find "$DEST" -name "*.tar.gz" -mtime +14 -delete
