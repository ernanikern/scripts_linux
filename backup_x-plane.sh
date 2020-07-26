#!/bin/bash

hora=`date +%d%m%Y_%H%M`

dir=/home/ernani/x-plane\ 10/Output
bkp=/home/ernani/Copy/backupsCASA

tar cjf "$bkp"/x-plane_output_"$hora".tar.bz2 "$dir"

