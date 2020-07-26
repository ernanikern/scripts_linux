#!/bin/bash

xfce4-display-settings --minimal

wmctrl -c Monitores

killall conky

start_conkys.sh
