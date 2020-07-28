#!/bin/bash

data=`date +%d%b%Y`

touch filesystem"$data".csv

find /home/g1* -printf "%f;%Ab%AY;%k \n" >> filesystem"$data".csv

