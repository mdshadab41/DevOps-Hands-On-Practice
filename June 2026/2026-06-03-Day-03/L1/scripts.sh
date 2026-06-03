## 🔹 Shell Script — Check File Exists

#!/bin/bash
FILE="/tmp/pathnex.txt"

if [ -f "$FILE" ]; then
  echo "file exists"
else 
  echo "File does not exist"
fi 