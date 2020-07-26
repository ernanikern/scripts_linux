#!/bin/bash

proc=`ps -Ao pid,tt,user,fname,tmout,f,wchan |grep snx |grep root |cut -d" "  -f1`

if [ "$proc" != "" ]; then
   kill $proc
   echo $proc killed
else
   echo "SNX not running"
fi
