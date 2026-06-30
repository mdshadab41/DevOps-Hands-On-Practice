#!/bin/bash

tar -czf /backup/nephronix-logs-$(date +%F).tar.gz /var/log/
echo "Logs archived"