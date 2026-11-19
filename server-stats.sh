#!/usr/bin/env bash
# server-stats.sh - basic server performance stats

echo "=== CPU Usage ==="
top -bn1 | awk '/Cpu\(s\)/ {printf "Used: %.1f%%  Idle: %.1f%%\n", 100-$8, $8}'

echo
echo "=== Memory Usage ==="
free -m | awk '/Mem:/ {printf "Used: %d MB (%.1f%%)  Free: %d MB (%.1f%%)\n", $3, $3*100/$2, $7, $7*100/$2}'

echo
echo "=== Disk Usage (/) ==="
df -h / | awk 'NR==2 {print "Used: " $3 " (" $5 ")  Free: " $4}'

echo
echo "=== Top 5 Processes by CPU ==="
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6

echo
echo "=== Top 5 Processes by Memory ==="
ps -eo pid,comm,%mem --sort=-%mem | head -n 6
