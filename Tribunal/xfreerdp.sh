#!/bin/bash

# SCRIPT RODANDO EM /usr/local/bin/

if [ $# -lt 2 ]
   then
      echo "Informe o 1. usuário e2. servidor a conectar <<<<<<<<<"
   else
      xfreerdp /u:$1@trt +clipboard /w:1300 /h:900 /v:$2
fi

## Parâmetros extras: 

# /w: largura da tela
# /h: altura da tela
# /d: domínio 

