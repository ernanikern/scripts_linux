#!/bin/bash

sleep 5 #aguarda 5 segundos para executar

state=`bluetoothctl show | grep Powered | awk '{print $2}'`
echo "state = $state"

while [ "$state" != "yes" ]
do
  id=`rfkill | grep bluetooth | awk '{print $1}'`
  # echo "id = $id"

  rfkill block "$id"
  #echo "Bloqueando..."
  #echo `rfkill`

  rfkill unblock "$id"
  #echo "Desbloqueando..."
  #echo `rfkill`
done
