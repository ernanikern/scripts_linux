#!/bin/bash

dir="/home/ernani/Dropbox/linux/scripts"

powered=`bluetoothctl show | awk '/Powered/ {print $2}'`

if [ "$powered" == "yes" ]; then
  #devices=`bluetoothctl devices | gawk '{print $2, $3}'`
  #aliases=`bluetoothctl devices | gawk '{print $3}'`
  bluetoothctl connect 88:C6:26:11:65:26  
else echo "Bluetoothctl desativado."
fi

  # conta quantos macs existem em $devices
#   num_items=`echo $devices | awk '{print NF}'`
#   num_macs=$(expr "$num_items" / 2)
#   echo "num_macs = $num_macs"
#   echo "Device to connect:"
#   for i in $(seq 1 "$num_macs")
#   do
#     echo "$devices" | while read each
#     do
#       echo "$i - `echo "$each" #| awk '$devices {print}'`" #teste
#     done
#   done
# fi
  # CRIA O ARQUIVO devices.txt COM UM MAC POR LINHA:
#  echo "" > "$dir"/devices.txt
#  for i in $(seq 1 $num_macs)
#  do
#    echo $devices | cut -d" " -f"$i" >> "$dir"/devices.txt
#  done
#  cat "$dir"/devices.txt | while read mac
#  do   
#    if [ "$mac" == "" ]; then continue
#    fi
#    conn=`bluetoothctl info "$mac" | awk '/Connected:/ {print $2}'`
#    if [ "$conn" == "yes" ]; then
#      alias=`bluetoothctl info $mac | awk '/Alias/ {print $2}'`
#      echo "$alias"
#    fi
#  done


