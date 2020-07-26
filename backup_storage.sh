#!/bin/bash

# cria os targets
usb1=/media/usb1
usb2=/media/usb2
target="$usb"/STORAGE/
usb="$usb1"
source=/media/storage/

if [ "$(ls -A $usb)" ]; then
    echo "$usb1 está montado"
    goto Executa
    goto:eof
else
    if [ "$(ls -A $usb
    echo "$usb não está montado"
fi

:Executa
    rsync -avuplgtor "$source" "$target"
    goto:eof
