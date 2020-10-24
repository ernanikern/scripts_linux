#!/bin/bash

xfce4-display-settings --minimal

sleep 1

killall conky

start_conkys.sh

wmctrl -F c 'Monitores'
sudo wmctrl -c Monitores
wmctrl -c Monitores
