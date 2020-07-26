#!/bin/bash

cert="/home/ernani/Dropbox/AmazonAWS/ernanikern-key-pair.pem"
remote="ubuntu@54.233.206.223"

if [ $# -lt 2 ]; then
   echo "  ERROR: Missing parameters"
   echo "    Usage: scp_amazonAWS <origin> <dest>"
   echo "    <dest> = path after '/home/ubuntu/' with final '/'"
else
   origin=$1
   dest=$2
   scp -i "$cert" "$origin" "$remote":/home/ubuntu/"$dest"
fi
