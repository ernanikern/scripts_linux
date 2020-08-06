#!/bin/bash

xfce4-display-settings --minimal

killall conky

start_conkys.sh

wmctrl -c 'Monitores'
