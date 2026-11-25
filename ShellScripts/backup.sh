#!/bin/bash
# ============================================================
# backup.sh — Folder Backup Script
# Author: Mayank Bodwal (2601730239)
# Course: B.Tech CSE (AI/ML) — Semester 1
# University: KR Mangalam University, Sohna, Gurgaon
# Description: Creates a compressed .tar.gz backup of a given
#              folder, saves it with a timestamp, and logs the
#              result to a log file.
# ============================================================

BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"

# --- Step 1: Check that an argument is provided ---
if [ $# -eq 0 ]; then
    echo "Error: No folder specified."
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

SOURCE_FOLDER="$1"

# --- Step 2: Check that the provided folder exists ---
if [ ! -d "$SOURCE_FOLDER" ]; then
    echo "Error: The folder '$SOURCE_FOLDER' does not exist."
    exit 1
fi

# --- Step 3: Create backup directory if it doesn't exist ---
mkdir -p "$BACKUP_DIR"

# --- Step 4: Create the compressed backup archive ---
TIMESTAMP=$(date '+%Y-%m-%d_%H-%M-%S')
BACKUP_FILENAME="backup_${TIMESTAMP}.tar.gz"
BACKUP_PATH="${BACKUP_DIR}/${BACKUP_FILENAME}"

tar -czf "$BACKUP_PATH" -C "$(dirname "$SOURCE_FOLDER")" "$(basename "$SOURCE_FOLDER")" 2>/dev/null

# --- Step 5: Verify and display result ---
if [ $? -eq 0 ]; then
    BACKUP_SIZE=$(du -h "$BACKUP_PATH" | awk '{print $1}')
    echo "============================================================"
    echo "  BACKUP SUCCESSFUL"
    echo "============================================================"
    echo "  Source Folder : $SOURCE_FOLDER"
    echo "  Backup File   : $BACKUP_FILENAME"
    echo "  Backup Path   : $BACKUP_PATH"
    echo "  Backup Size   : $BACKUP_SIZE"
    echo "  Timestamp     : $(date '+%d %B %Y — %I:%M:%S %p')"
    echo "============================================================"

    # --- Step 6: Append log entry ---
    echo "[${TIMESTAMP}] SUCCESS — Backed up '$SOURCE_FOLDER' → $BACKUP_FILENAME ($BACKUP_SIZE)" >> "${BACKUP_DIR}/backup.log"
else
    echo "Error: Backup failed for '$SOURCE_FOLDER'."
    echo "[${TIMESTAMP}] FAILED — Could not back up '$SOURCE_FOLDER'" >> "${BACKUP_DIR}/backup.log"
    exit 1
fi
