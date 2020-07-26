#!/bin/bash

mysqldump -h localhost -uernani -p -v financeiro -r /home/ernani/Dropbox/financeiro/fin_`date +%d%m%y_%H%M`.sql
