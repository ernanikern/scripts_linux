#!/bin/bash

# SCRIPT RODANDO EM /usr/local/bin/

if [ $# -eq 0 ]
   then
      echo "Informe o servidor a conectar <<<<<<<<<"
   else
      xfreerdp /u:esk@trt +clipboard /w:1300 /h:900 /v:$1
fi

## Parâmetros extras: 

# /w: largura da tela
# /h: altura da tela
# /d: domínio 

