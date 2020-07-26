#!/bin/bash

mysqldump -h ferrokern.net -uferroker_fin -p -v ferroker_financeiro -r /home/ernani/Dropbox/financeiro/fin_`date +%d%m%y_%H%M`.sql
