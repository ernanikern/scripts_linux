#!/bin/bash

dir="/home/ernani/Downloads/"

find "$dir" -atime +60 -exec rm -rf {} \;
