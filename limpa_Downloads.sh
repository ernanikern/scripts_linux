#!/bin/bash

dir="/home/ernani/Downloads/"

find "$dir" -atime +30 -exec rm -rf {} \;
