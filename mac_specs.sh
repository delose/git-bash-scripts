#!/bin/bash

echo "=== Mac Specifications ==="

# CPU Information
echo "CPU Information:"
sysctl -n machdep.cpu.brand_string

# Memory Information
echo "Memory Information (in GB):"
RAM_GB=$(echo "$(sysctl -n hw.memsize) / 1024 / 1024 / 1024" | bc)
echo "${RAM_GB} GB"

# Disk Space Information
echo "Disk Space Information:"
df -h

# GPU Information
echo "GPU Information:"
system_profiler SPDisplaysDataType | grep "Chipset Model"

# macOS Version
echo "macOS Version:"
sw_vers

# Detailed System Information
echo "Detailed System Information:"
system_profiler SPHardwareDataType

echo "=== End of Specifications ==="


