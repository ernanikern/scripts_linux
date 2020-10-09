#!/bin/bash

#xfce4-terminal -e 'wmctrl -l'
#
if [ "$1" == "" ]; then
	echo "Informe parte (única) do nome da janela a ser movida (case insensitive)."
	echo "Execute 'wmctrl -lp para listar as janelas.'"
else
	echo "1 = $1"
  wmctrl -r "$1" -e 0,0,1111,-1,-1
	wmctrl -a "$1"
fi
