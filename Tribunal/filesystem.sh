#!/bin/bash

data=`date +%d%b%Y`

touch filesystem"$data".csv

find /home/g1* -printf "%f;%Ab%AY;%k \n" >> filesystem"$data".csv

# %f - nome do arquivo sem o caminho completo
# %Ab%AY - data de último acesso do arquivo (%A), no formato mes(b) e ano(Y)
# %k - espaço usado pelo arquivo em blocos de 1k
# \n - nova linha
