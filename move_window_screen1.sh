#!/bin/bash

#xfce4-terminal -e 'wmctrl -l'
#

telas=`wmctrl -l`

x=1
echo "$telas" | while read linha
do 
  linha2=`echo "$linha" | awk '{for (i=4;i<=NF;i++) printf $i" "; print "\n"}'`
    echo " $x: $linha2"
    let "x=x+1"
done

if [ "$1" == "" ]; then
	echo "Informe parte (única) do nome da janela a ser movida (case insensitive)."
	echo "Execute 'wmctrl -lp para listar as janelas.'"
else
	echo "1 = $1"
  wmctrl -r "$1" -e 0,0,1111,-1,-1
	wmctrl -a "$1"
fi
