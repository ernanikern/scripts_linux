#!/bin/bash

cd /home/ernani/Dropbox/linux/scripts/Tribunal/fs_interior

for file in *.csv
do
	mysql -uernani -pkrq6XY -DfilesystemsTRT -e "LOAD DATA INFILE $file INTO TABLE results LINES TERMINATED BY '\n';"
done
