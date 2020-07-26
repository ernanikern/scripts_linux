#!/bin/sh

if [ ! -e /proc/cpuinfo ] ; then
echo Nao existe arquivo /proc/cpuinfo
exit 1
fi

CPUINFO=/proc/cpuinfo
NRCPUPHY=$(grep "physical id" $CPUINFO | sort -u | wc -l)
NRCPUTHREAD=$(grep "processor" $CPUINFO | wc -l)
NRCPUCORE=$(grep "core id" $CPUINFO | sort -u | wc -l)


if [ $NRCPUPHY -eq 1 ] ;   then
    echo O sistema computacional possui somente 1 processador fisico.
  else
    echo O sistema computacional possui ${NRCPUPHY} processadores fisicos.
fi

if [ $NRCPUCORE -gt 1 ] ;  then
        echo Para cada processador fisico existem $NRCPUCORE cores.
fi

if [ $NRCPUTHREAD -gt 1 ] ;   then
if [ $NRCPUTHREAD -eq $NRCPUCORE ] ; then
echo ''
echo "Aparentemente nao existe Hyper-Threading (HT) ativada !!!"
echo ''
echo "Se o processador portar essa tecnologia e' necessario verificar na BIOS a ativacao dessa funcionalidade a nivel de hardware"
else
echo "O processador possui a tecnologia Hyper-Threading (HT) ATIVADA, possuindo $NRCPUTHREAD Thread logical CPU."
fi
fi

echo ''
echo ''

echo Proc fisico : ${NRCPUPHY}
echo Cores fisicos : ${NRCPUCORE}
echo Thread logical CPU : ${NRCPUTHREAD}
echo -n MODELO :  `grep "model name" $CPUINFO | sort -u | cut -d : -f 2-` `grep "cache size" $CPUINFO | sort -u | cut -d : -f 2-` cache
echo ''
echo ''
