# Shell Script — Count Files in Directory

#!/bin/bash

DIR="/var/log"

COUNT=$(ls $DIR | wc -l)

echo "Total files in $DIR: $COUNT"


