#!/bin/bash

# $1...$2...$3 = quaisquer parametros adicionais

sudo mount /media/usb1

cat ~/rsync_storage/lista_pastas_bkp |while read dir
do 

echo "  =============================================="
echo "  =====>>  SINCRONIZANDO DIRETORIO $dir  <<====="
echo "  =============================================="                                               
hora=`date +%d%m%Y_%H%M`

rsync -avuplgtor storage/"$dir"/ usb1/STORAGE/"$dir"/ --itemize-changes --log-file=~/rsync_storage/logs/rsync-storage_"$dir"_"$hora".log

done
