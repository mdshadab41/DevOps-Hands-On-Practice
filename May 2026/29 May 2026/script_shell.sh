#!/bin/bash


echo "CPU"
top -bn1 | head -5


echo "Memory"
free -h

echo "Disk"
df -h

echo "IP"
hostname -l

echo "Top Process"
ps aux --sort=-%cpu | head