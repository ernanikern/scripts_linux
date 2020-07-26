#!/bin/bash

dir="/home/ubuntu/Dropbox-Uploader"
data=`date +%d%m%y_%H%M`

mysqldump -h localhost -uernani -p -v financeiro -r /home/ubuntu/Dropbox-Uploader/financeiro/fin_"$data".sql

"$dir"/dropbox_uploader.sh upload "$dir"/financeiro/fin_"$data".sql financeiro/
