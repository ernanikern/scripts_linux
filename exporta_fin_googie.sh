#!/bin/bash

mysqldump -h 206.72.206.122  -uernani -p -v financeiro -r /home/ernani/Dropbox/financeiro/fin_`date +%d%m%y_%H%M`.sql
