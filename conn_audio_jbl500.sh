#!/bin/bash

# LISTA OS DISPOSITIVOS DE SAÍDA, MANTÉM APENAS O HDMI E BLUETOOTH, E DETECTA QUAL ESTÁ SEM USO (SUSPENDED):

ativar=`pactl list short sinks | grep "5C_FB_7C_7D_A8_7E" | awk '{print $1, $2}'`
echo "ativar = $ativar"
if [ "$ativar" == "" ]; then
  echo "Nada retornado"
else
  id=`echo $ativar | awk '{print $1}'`
  nome=`echo $ativar | awk '{print $2}'`
  echo "id = $id"
  echo "nome = $nome"
  pacmd set-default-sink "$id"
  pacmd set-defalut-sink "$nome"
  pactl list short sinks
fi
# VERIFICA SE O ÚNICO DISPOSITIVO JÁ ESTÁ EM USO (CAUSA $ativar = ""):

# if [ "$ativar" != "" ];then
#   echo "novo = $novo"
#   pacmd set-default-sink $novo
# else 
#   echo "Não há outro dispositivo conectado."
# fi
