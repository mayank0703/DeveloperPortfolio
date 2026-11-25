#!/bin/bash
# ============================================================
# sysinfo.sh — System Information Report
# Author: Mayank Bodwal (2601730239)
# Course: B.Tech CSE (AI/ML) — Semester 1
# University: KR Mangalam University, Sohna, Gurgaon
# Description: Generates a formatted system information report
#              showing CPU, memory, and top processes.
# ============================================================

echo "============================================================"
echo "  SYSTEM INFORMATION REPORT"
echo "  Name: Mayank Bodwal | Roll No: 2601730239"
echo "  Date: $(date '+%A, %d %B %Y — %I:%M:%S %p %Z')"
echo "============================================================"
echo ""

# --- CPU Information ---
echo "------------------------------------------------------------"
echo "  CPU INFORMATION"
echo "------------------------------------------------------------"
CPU_MODEL=$(lscpu | grep "Model name" | awk -F: '{print $2}' | xargs)
CPU_CORES=$(lscpu | grep "^CPU(s):" | awk -F: '{print $2}' | xargs)
echo "  CPU Model   : $CPU_MODEL"
echo "  CPU Cores    : $CPU_CORES"
echo ""

# --- Memory Information ---
echo "------------------------------------------------------------"
echo "  MEMORY INFORMATION"
echo "------------------------------------------------------------"
TOTAL_MEM=$(free -h | awk '/^Mem:/ {print $2}')
USED_MEM=$(free -h | awk '/^Mem:/ {print $3}')
AVAIL_MEM=$(free -h | awk '/^Mem:/ {print $7}')
echo "  Total Memory : $TOTAL_MEM"
echo "  Used Memory  : $USED_MEM"
echo "  Available    : $AVAIL_MEM"
echo ""

# --- Top 3 Processes by CPU Usage ---
echo "------------------------------------------------------------"
echo "  TOP 3 PROCESSES BY CPU USAGE"
echo "------------------------------------------------------------"
printf "  %-10s %-6s %-6s %s\n" "USER" "PID" "%CPU" "COMMAND"
printf "  %-10s %-6s %-6s %s\n" "----" "---" "----" "-------"
ps aux --sort=-%cpu | awk 'NR>1 && NR<=4 {printf "  %-10s %-6s %-6s %s\n", $1, $2, $3, $11}'
echo ""

# --- Footer ---
echo "============================================================"
echo "  Report generated successfully."
echo "============================================================"
