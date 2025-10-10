#!/bin/bash
#
#Author: almas-the-fixer
#Date: 10th Oct 2025
#Version: v1.0
#Description: Prints Server Performance such as CPU Usage, Disk Usage, Top 5 Memory and CPU Consuming Processes}'

echo "===== SERVER PERFORMANCE STATS ====="

echo "=====CPU Usage====="
echo "Fetching CPU usage..."
echo "Total CPU Usage: $(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')"
printf "\n\n"

echo "=====Total Memory Usage Free v/s Used====="
free -m | awk '/Mem:/ {print "Used:", $3, "MB out of", $2, "MB (" ($3/$2)*100 "% used)"}'
printf "\n\n"

echo "=====Disk Usage====="
printf "\n"
echo "Fetching Disk Usage..."
printf "\n"
echo "Total % of Disk Used: $(df -h | grep "/$" | awk '{print $5}')"
printf "\n\n"

echo "=====Top 5 CPU Consuming Processes====="
ps aux | sort -k3 -r | head -n 5 | awk '{print $1,  $2,  $3,  $4,  $11}'
printf "\n\n"

echo "=====Top 5 Memory Consuming Processes====="
ps aux | sort -k4 -r | head -n 5 | awk '{print $1,  $2,  $3,  $4,  $11}'


