#!/bin/bash

sleep 5 #aguarda 5 segundos para executar

state=`bluetoothctl show | grep Powered | awk '{print $2}'`
echo "state = $state"
count=0

while [ "$state" != "yes" ]
do

	sudo systemctl restart bluetooth
	sudo systemctl restart systemd-rfkill

  id=`rfkill | grep bluetooth | awk '{print $1}'`
  echo "id = $id"

  rfkill block "$id"
  echo "Bloqueando..."
  echo `rfkill`

  rfkill unblock "$id"
  echo "Desbloqueando..."
  echo `rfkill`

	state=`bluetoothctl show | grep Powered | awk '{print $2}'`
	echo "state interno = $state"

	((count++))
	echo "count = $count"
	if [ "$count" -eq 10 ]; then
		exit
	fi
done
