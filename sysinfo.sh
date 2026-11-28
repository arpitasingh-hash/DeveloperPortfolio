
#!/bin/bash

# Author: Sanskriti
# Roll Number: 2601730034
# Purpose: Generate System Information Report

echo "=========================================="
echo "       SYSTEM INFORMATION REPORT"
echo "=========================================="

echo "Name: Sanskriti"
echo "Roll Number: 2601730034"
echo "Date: $(date)"

echo ""
echo "--------------- CPU INFORMATION ---------------"

CPU_MODEL=$(lscpu | awk -F: '/Model name/ {gsub(/^[ \t]+/, "", $2); print $2; exit}')
CPU_CORES=$(lscpu | awk -F: '/^CPU\(s\)/ {gsub(/^[ \t]+/, "", $2); print $2; exit}')

echo "CPU Model: $CPU_MODEL"
echo "Number of Cores: $CPU_CORES"

echo ""
echo "--------------- MEMORY INFORMATION ---------------"

free -h | awk 'NR==2 {
    print "Total Memory: " $2
    print "Used Memory: " $3
}'

echo ""
echo "--------------- TOP 3 PROCESSES ---------------"

ps aux --sort=-%cpu | head -4

echo ""
echo "=========================================="
echo "Report generated successfully."
echo "=========================================="
