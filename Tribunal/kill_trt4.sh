#!/bin/bash

proc=`ps aux |grep snx | grep root | awk '{print $2}'`

if [ "$proc" != "" ]; then
   sudo kill "$proc"
   echo "$proc" killed
else
   echo "SNX not running"
fi
