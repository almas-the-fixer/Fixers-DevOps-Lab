#!/bin/bash
###################
#Name: Log Archiver
#Author: Fixer
#Date: 17th Oct 2025
#Description: Log archiver that takes log directory as an arguement and archives logs by compressing them and storing them in a new dir along with date and time.
#Version: v1.0
###################

ARCHIVE_DIR=~/Desktop/archives
ARCHIVE_NAME="logs_archive_$(date +%Y_%m_%d__%H_%M_%S).tar.gz"

echo "========== LOG ARCHIVER =========="

# Check if argument is provided
if [ -z "$1" ]; then
    echo "Log Archiver needs a directory containing logs in order to archive it! Exiting..."
    exit 1
fi

# Check if argument is a valid directory
if [ ! -d "$1" ]; then
    echo "The argument passed MUST be a valid directory! Exiting..."
    exit 1
fi

# Creating Archive Direrctory if not exists

if [ ! -d "$ARCHIVE_DIR" ]; then
	mkdir -p "$ARCHIVE_DIR"
fi

# Finally Archiving the logs

tar -czf "$ARCHIVE_DIR/$ARCHIVE_NAME" "$1"
