## Shell Script — Check Internet Connectivity

#!/bin/bash

ping -c 2 google.com &> /dev/null

if [$? -eq 0]; then
  echo "Internet is available"
else 
  echo "No internet connection"
fi 


