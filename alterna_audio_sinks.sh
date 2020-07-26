#!/bin/bash

# LISTA OS DISPOSITIVOS DE SAÍDA, MANTÉM APENAS O HDMI E BLUETOOTH, E DETECTA QUAL ESTÁ SEM USO (SUSPENDED):

ativar=`pactl list short sinks | egrep "hdmi|blue" | grep SUSPENDED | awk '{print $1, $2}'`
echo "ativar = $ativar"
novo=`echo $ativar | awk '{print $2}'`
echo "novo = $novo"
# VERIFICA SE O ÚNICO DISPOSITIVO JÁ ESTÁ EM USO (CAUSA $ativar = ""):

if [ "$ativar" != "" ];then
  echo "novo = $novo"
  pacmd set-default-sink $novo
else 
  echo "Não há outro dispositivo conectado."
fi
