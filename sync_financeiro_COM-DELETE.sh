#!/bin/bash

hora=`date +%d%m%Y_%H%M`

tar cjf /home/ernani/Copy/financeiro/bkp_fin_"$hora".tar.bz2 /home/ernani/Copy/financeiro/*.sql

rsync -avuplgtor /home/ernani/Dropbox/financeiro/ /home/ernani/Copy/financeiro/ --exclude=bkp_fin*.tar.bz2 --delete
