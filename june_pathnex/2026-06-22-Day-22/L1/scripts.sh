## Shell Script — Monitor Disk Usage

#!/bin/bash

USAGE=$(df -h / | tail -1 | awk '{print $5}')

echo "Disk usage: $USAGE"


