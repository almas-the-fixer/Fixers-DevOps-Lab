#!/bin/bash

#########################
# Name: Log Analyzer
# Author: Fixer
# Date: 18th Oct 2025
# Description: Analyses an Nginx log file and returns metrics such as top IP addresses with most requests etc..
# Version: v1.0
#########################

echo "=============== Welcome to Log Analyzer ==============="

# Check if argument is provided
if [ ! -e "$1" ]; then
    echo "Please provide an Nginx log file as an argument! Exiting..."
    exit 1   # 🔸 Non-zero exit for errors
fi

# Check if argument is a .log file
if [ "${1##*.}" != "log" ]; then
    echo "Argument must be a .log file! Exiting..."
    exit 1
fi

echo "=============== Top IP Addresses with Most Requests ==============="
awk '{print $1}' "$1" | sort | uniq -c | sort -nr | head -n5 | awk '{print "IP:", $2, "--> Requests:", $1}'


echo "=============== Top 5 Most Requested Paths ==============="
awk '{print $7}' "$1" | sort | uniq -c | sort -nr | head -n5 | awk '{print "Path:", $2, "--> Requests:", $1}'

echo "=============== Top 5 Response Status Codes ==============="
awk '{print $9}' "$1" | sort | uniq -c | sort -nr | head -n5 | awk '{print "Request Code:", $2, "--> Responses:", $1}'

echo "=============== Top 5 User Agents ==============="
awk '{for(i=12;i<=NF;i++) printf "%s ", $i; print ""}' "$1" | sort | uniq -c | sort -nr | head -n5 | awk '{print "User Agent:", substr($0,index($0,$2)), "--> Responses:", $1}'

