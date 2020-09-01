#!/bin/bash

dir="/home/ernani/Downloads/"

find "$dir" -atime +30 -exec rm -rf {} \; 2>&1 | /usr/bin/logger -i
