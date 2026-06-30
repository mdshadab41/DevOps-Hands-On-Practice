# Shell Script — Menu Driven Program

#!/bin/bash

echo "1) Show data"
echo "2) Show uptime"
echo "3) Show users"

read -p "Choose option: " opt

case $opt in
  1) data ;;
  2) uptime ;;
  3) who ;;
  *) echo "Invalid choice" ;;
esac