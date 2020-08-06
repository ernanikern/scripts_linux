#!/bin/bash

# LISTA OS DISPOSITIVOS DE SAÍDA, MANTÉM APENAS O HDMI E BLUETOOTH, E DETECTA QUAL ESTÁ SEM USO (SUSPENDED):

ativar=`pactl list short sinks | grep "88_C6_26_11_65_26" | awk '{print $1, $2}'`
echo "ativar = $ativar"
if [ "$ativar" == "" ]; then
  echo "Nada retornado"
else
  id=`echo $ativar | awk '{print $1}'`
  nome=`echo $ativar | awk '{print $2}'`
  echo "id = $id"
  echo "nome = $nome"
  pacmd set-default-sink "$id"
  pacmd set-default-sink "$nome"
  pactl list short sinks
fi
# VERIFICA SE O ÚNICO DISPOSITIVO JÁ ESTÁ EM USO (CAUSA $ativar = ""):

# if [ "$ativar" != "" ];then
#   echo "novo = $novo"
#   pacmd set-default-sink $novo
# else 
#   echo "Não há outro dispositivo conectado."
# fi
