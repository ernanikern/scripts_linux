#!/bin/bash

# ESSE SCRIPT DELETA ARQUIVOS COM MAIS DE 30 DIAS, TODOS OS DIAS.

dir=/home/ernani/temp
dir2=/media/storage/fotos/temp

find "$dir"/ -atime +30 -exec rm -rf {} \;
find "$dir2"/ -atime +30 -exec rm -rf {} \;
