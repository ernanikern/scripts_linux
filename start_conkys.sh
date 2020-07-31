#!/bin/bash

killall conky

conky_dir="/home/ernani/.conky"

file1="2monit-right.conkyrc"
file2="2monit-upleft.conkyrc"
file3="2monit-bottom-performance.conkyrc"

conky -c $conky_dir/$file1 -m1 -q

conky -c $conky_dir/$file2 -m1 -q

conky -c $conky_dir/$file3 -m1 -q
