#!/bin/bash

xfce4-display-settings --minimal

sleep 1

wmctrl -c 'Monitores'

killall conky

start_conkys.sh
