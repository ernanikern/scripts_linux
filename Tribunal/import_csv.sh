#!/bin/bash

cd /home/ernani/Dropbox/linux/scripts/Tribunal/fs_interior

for file in *.csv
	do
	mysql -e "USE filesystemsTRT LOAD DATA LOCAL INFILE '"$file"' INTO TABLE results FIELDS TERMINATED BY '/' ENCLOSED BY '"' LINES TERMINATED BY '\n';"
done
