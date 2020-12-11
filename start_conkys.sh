#!/bin/bash

outlog="/home/ernani/Dropbox/linux/conky/conky.log"
errlog="/home/ernani/Dropbox/linux/conky/err.log"

killall conky

conky_dir="/home/ernani/.conky"

file1="2monit-right.conkyrc"
file2="2monit-upleft.conkyrc"
file3="2monit-bottom-performance.conkyrc"

conky -c $conky_dir/$file1 -m2 1> "$outlog" 2> "$errlog"

conky -c $conky_dir/$file2 -m2 1> "$outlog" 2> "$errlog"

conky -c $conky_dir/$file3 -m2 1> "$outlog" 2> "$errlog"
