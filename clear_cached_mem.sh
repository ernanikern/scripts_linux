#!/bin/bash

free -mh

sync && echo 3 | sudo tee /proc/sys/vm/drop_caches &> /dev/null

echo 
echo "====================="
echo 

free -mh
