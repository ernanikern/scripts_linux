#!/bin/bash

dir="/home/ernani/Downloads/"

find "$dir" -mtime +45 -exec rm -rf {} \;
