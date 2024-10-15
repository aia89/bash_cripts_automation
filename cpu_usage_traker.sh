#!/bin/bash

output_file="cpu_usage_log.txt"
echo "$(date) $(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d. -f1)%" >> "$output_file"
echo "CPU usage logged."