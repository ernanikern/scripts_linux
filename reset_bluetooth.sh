#!/bin/bash

id=`rfkill | grep bluetooth | awk '{print $1}'`
# echo "id = $id"

rfkill block "$id"
#echo "Bloqueando..."
#echo `rfkill`

rfkill unblock "$id"
#echo "Desbloqueando..."
#echo `rfkill`
