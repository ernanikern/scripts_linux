#!/bin/bash

# sleep 3 #aguarda 3 segundos para executar

# state=`bluetoothctl show | grep Powered | awk '{print $2}'`
# echo "state = $state"
count=0
echo "count = $count"
state="no"
echo "state = $state"

while [ "$state" != "yes" ]
do
  sudo systemctl kill bluetooth
  sudo systemctl kill bluetooth
  echo "Matou bluetooth..."
#  sudo systemctl kill systemd-rfkill

  sudo systemctl start bluetooth
  echo "Iniciando bluetooth..."
#  sudo systemctl start systemd-rfkill

  id=`rfkill | grep bluetooth | awk '{print $1}'`
  echo "id = $id"

  rfkill block "$id"
  echo "Bloqueando $id..."
  echo `rfkill`

  rfkill unblock "$id"
  echo "Desbloqueando $id..."
  echo `rfkill`

  state=`bluetoothctl show | grep Powered | awk '{print $2}'`
  if [ "$state" == null ]; then
    sudo systemctl restart systemd-rfkill
    state=`bluetoothctl show | grep Powered | awk '{print $2}'`
  fi
  echo "state interno = $state"

  ((count++))
  echo "count = $count"
  if [ "$state" == "yes" ]; then
    exit
  else if [ "$count" -eq 2 ]; then
    exit
    fi
  fi
done
