#!/bin/bash

## Description : We have below script that is used to delete logs that are 14 days old


# Set the directory path
log_dir="/var/log"

# Calculate the timestamp for 14 days ago
timestamp=$(date -d '14 days ago' +%s)

# Iterate over the log files in the directory
for file in "$log_dir"/*.log; do

# Check if the file is older than 14 days
  if [ $(stat -c %Y "$file") -lt "$timestamp" ]; then

 # Delete the log file
    rm "$file"
    echo "Deleted file: $file"
  fi
done

