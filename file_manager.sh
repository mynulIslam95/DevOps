#!/bin/bash

# List files in the current directory
echo "Listing all files:"
ls

# Count the number of files
file_count=$(ls | wc -l)
echo "Number of files: $file_count"

# Create a directory for text file backups
mkdir -p txt_backup

# Copy all text files to the backup directory
cp *.txt txt_backup/
echo "All text files have been backed up to txt_backup/"

