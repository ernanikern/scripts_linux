#!/bin/bash

cd /home/ernani/Dropbox/financeiro/

data=`date +%d%m%y_%H%M`

read -p "CONFIRMA A EXPORTACAO? " -n 1
if [[ $REPLY = "s" ]]
then
	echo "   "
	`mysqldump -uernani -pkrq6XY financeiro -v -R -r fin_"$data".sql`
	ls -l fin_"$data".sql

#	touch exporta_fin_linux.sh 
else
	echo "   "
	exit 0
fi

# Rotina para rotacionar backups caso existam mais de 10 arquivos anteriores:

#quantos=`ls -l fin_*.sql | wc -l`

#if [ $quantos -gt 10 ] 
#        then
#                echo "Rotacionando bancos antigos..."
#                find . -name "fin_*.sql" -mtime +12 -exec rm {} \;
		
#		quantos=`ls -l fin_*.sql | wc -l`
#		echo "backups = $quantos"
#	else
#		echo "backups = $quantos"
#fi

