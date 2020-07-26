#!/bin/bash

proc=`ps aux | grep esk@bkpremoto2 | grep -v grep | cut -d"i" -f2| cut -d" " -f4`
if [[ $proc -lt 1000 ]];then
    proc=`ps aux | grep esk@bkpremoto2 | grep -v grep | cut -d"i" -f2| cut -d" " -f5`
fi
if [[ $proc -lt 100 ]];then
    proc=`ps aux | grep esk@bkpremoto2 | grep -v grep | cut -d"i" -f2| cut -d" " -f6`
fi
echo "Killing $proc..."
kill $proc
