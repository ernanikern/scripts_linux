#!/bin/bash

#/usr/bin/snx -s 186.251.63.249 -u esk

arq_snx=/usr/bin/snx

# FOI ATIVADO O SERVIÇO systemd-resolved para resolver o problema da VPN, VERIFICAR COMO FICA DEPOIS.

if [ "$*" = "-d" ] ; then
        $arq_snx $*
else
        $arq_snx -s "186.251.63.249" -u esk
#        if [ -e /usr/bin/systemd-resolve ] ; then
#                sudo systemd-resolve --interface=tunsnx --set-dns=10.4.16.63 --set-domain=trt4.jus.br
#                sudo systemd-resolve --interface=tunsnx --set-dns=10.4.16.63 --set-domain=trt4.gov.br
#		sudo resolvectl dns tunsnx 10.4.16.62 10.4.20.60 10.4.16.63
#		sudo resolvectl default-route tunsnx off
#		sudo resolvectl domain tunsnx trt4.gov.br trt4.jus.br
#        fi
fi
