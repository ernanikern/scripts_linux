#!/bin/bash

# DECLARACAO DE VARIAVEIS
targetREDE="root@bkpremoto1:/nas/info/Migracao/ernani/backups"
targetLOCAL="/home/ernani/Copy/backupsTRT"
sourceTomboy="/home/ernani/.local/share/tomboy"
sourceConfigs="/home/ernani/.config/tomboy"
hora=`date +%d%m%Y_%H%M`

# COMPACTA O DIRETORIO SRT
tar cjf "$targetLOCAL"/bkp_notas_Tomboy_"$hora".tar.bz2 "$sourceTomboy"
tar cjf "$targetLOCAL"/bkp_configs_Tomboy_"$hora".tar.bz2 "$sourceConfigs"

# ENVIA AO DESTINO

# ROTACIONA OS BACKUPS (FAZER ANTES)
#quantTomboy=`ls -l "$targetLOCAL"/bkp_tomboy_*.tar.bz2 | wc -l`


