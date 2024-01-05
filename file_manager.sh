#!/bin/bash

# Check if the txt_backup directory already exists
if [ -d txt_backup ]; then
    echo "Backup directory already exists."
else
    # Create a directory for text file backups
    mkdir -p txt_backup
    echo "Backup directory created."
fi

# Copy all .txt files to the backup directory and list them
echo "Backing up all text files:"
for file in *.txt; do
    # Check if there are any txt files
    if [ -f "$file" ]; then
        cp "$file" txt_backup/
        echo "$file backed up."
    else
        echo "No text files to backup."
        break
    fi
done

# Count the number of files in the backup directory
backup_count=$(ls txt_backup | wc -l)
echo "Number of files in backup: $backup_count"
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

