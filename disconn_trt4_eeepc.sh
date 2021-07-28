#!/bin/zsh

proc=`ps aux |\grep --color=auto snx | \grep --color=auto "186.251.63.249" | awk '{print $2}'`

sudo kill "$proc"
