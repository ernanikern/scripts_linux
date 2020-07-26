#!/bin/bash

# DECLARACAO DE VARIAVEIS
targetREDE="root@bkpremoto1:/nas/info/Migracao/ernani/backups"
targetLOCAL="/home/ernani/Copy/backupsTRT"
sourceSRT="/home/ernani/SRT"
hora=`date +%d%m%Y_%H%M`

# COMPACTA O DIRETORIO SRT
tar cjf "$targetLOCAL"/bkp_srt_"$hora".tar.bz2 "$sourceSRT"

# ENVIA AO DESTINO

# ROTACIONA OS BACKUPS (FAZER ANTES)
quantSRT=`ls -l "$targetLOCAL"/bkp_srt_*.tar.bz2 | wc -l`


