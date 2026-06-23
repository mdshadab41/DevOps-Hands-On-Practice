# Shell Script — Kill High CPU Process
#!/bin/bash
PID=$(ps aux --sort=-%cpu | awk 'NR==2{print $2}')

echo "Killing process: $PID"

kill -9 $PID




