#!/bin/bash

orig=/home/ernani
dest=/media/storage/Copy/backupsCASA
hora=`date +%d%m%Y_%H%M`

cd "$orig"

ls -A | egrep '^\.' | xargs tar cjf "$dest"/homes_"$hora".tar.bz2 --exclude=.cache --exclude=.dbus --exclude=.font* --exclude=.java --exclude=.dropbox* --exclude=.thumbnails 
