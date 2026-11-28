
#!/bin/bash

# Author: Sanskriti
# Roll Number: 2601730034
# Purpose: Create compressed folder backups

# Check if argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

SOURCE="$1"

# Check if source folder exists
if [ ! -d "$SOURCE" ]; then
    echo "Error: Folder does not exist: $SOURCE"
    exit 1
fi

# Create backup directory
BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
mkdir -p "$BACKUP_DIR"

# Generate timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Create archive
BACKUP_FILE="backup_${TIMESTAMP}.tar.gz"

if tar -czf "$BACKUP_DIR/$BACKUP_FILE" -C "$(dirname "$SOURCE")" "$(basename "$SOURCE")"; then

    SIZE=$(du -h "$BACKUP_DIR/$BACKUP_FILE" | awk '{print $1}')

    echo "===================================="
    echo "Backup created successfully!"
    echo "Filename: $BACKUP_FILE"
    echo "Size: $SIZE"
    echo "Backup saved in: $BACKUP_DIR"
    echo "===================================="

    echo "$TIMESTAMP - SUCCESS - $BACKUP_FILE - Size: $SIZE" >> "$BACKUP_DIR/backup.log"

else
    echo "Error: Backup creation failed."
    echo "$TIMESTAMP - FAILED - $BACKUP_FILE" >> "$BACKUP_DIR/backup.log"
    exit 1
fi

