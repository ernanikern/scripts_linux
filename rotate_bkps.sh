#!/bin/bash

#---------------------------------------------------
# 1. ROTACIONA OS BACKUPS 'SRT' 
#---------------------------------------------------
     
# VARIAVEIS
pastaBKP="/home/ernani/Copy/backupsTRT"
idadeSRT="2"
     
# testa quantos arquivos existem no diretorio
quantSRT=`ls -l "$pastaBKP"/bkp_srt*.tar.bz2 | wc -l`

if [ "$quantSRT" -gt 2 ]; then
	echo "Tem mais de 2 backups SRT..."
	# Apaga os arquivos antigos:
	find "$pastaBKP" -name "bkp_srt*.tar.bz2" -type f -mtime +"$idadeSRT" -exec rm -r {} \;
else
	echo "Apenas 2 ou menos arquivos de backup SRT, cancelando."
fi

#----------------------------------------------------
# 2. ROTACIONA OS BACKUPS 'NOTAS'
#----------------------------------------------------

idadeNOTAS="4"

# testa quantos arquivos existem no diretorio
quantNOTAS=`ls -l "$pastaBKP"/bkp_notas*.tar.bz2 | wc -l`

if [ "$quantNOTAS" -gt 3 ]; then
        echo "Tem mais de 3 backups NOTAS..."
        # Apaga os arquivos antigos:
        find "$pastaBKP" -name "bkp_notas*.tar.bz2" -type f -mtime +"$idadeNOTAS" -exec rm -r {} \;
else
        echo "Apenas 3 ou menos arquivos de backup NOTAS, cancelando."
fi

#----------------------------------------------------
# 3. ROTACIONA OS BACKUPS 'CONFIGS_NOTAS'
#----------------------------------------------------

idadeCONFS="1"

# testa quantos arquivos existem no diretorio
quantCONFS=`ls -l "$pastaBKP"/bkp_configs_Tomboy*.tar.bz2 | wc -l`

if [ "$quantCONFS" -gt 1 ]; then
        echo "Tem mais de 1 backups CONFIGS_NOTAS..."
        # Apaga os arquivos antigos:
        find "$pastaBKP" -name "bkp_configs_Tomboy*.tar.bz2" -type f -mtime +"$idadeCONFS" -exec rm -r {} \;
else
        echo "Apenas 1 ou menos arquivos de backup CONFIGS_NOTAS, cancelando."
fi

