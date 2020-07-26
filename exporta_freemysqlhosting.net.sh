#!/bin/bash

mysqldump -hsql10.freemysqlhosting.net -usql10260096 -pJHiBbzaqVL -v sql10260096 -r /home/ernani/Dropbox/financeiro/fin_`date +%d%m%y_%H%M`.sql
