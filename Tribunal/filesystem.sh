#!/bin/bash

host=`hostname -s`
file="filesystem_$host.csv"
rm "$file"

#find /home/g1*/textos/ -printf "%f;%Ab%AY;%k \n" >> "$file"
find /home/g1*/textos/ -printf "%f/%AY-%Am-%Ad/%s \n" | grep -v "textos//" >> "$file"

# %f - nome do arquivo sem o caminho completo
# %AY-%Am-%Ad - data de último acesso do arquivo (%A), no formato YYYY-mm-dd
# %s - tamanho do arquivo
# %k - espaço usado pelo arquivo em blocos de 1k
# \n - nova linha
