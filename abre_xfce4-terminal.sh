#!/bin/bash

xfce4-terminal --tab --command=conn_checkpoint_trt4 --tab --tab

wmctrl -r terminal -e 0,0,1111,-1,-1
wmctrl -a terminal
