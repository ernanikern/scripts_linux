#!/bin/bash

rm filesystem27jul2020.csv

find /home/g1* -printf "%f;%Ab%AY;%k \n" >> filesystem27jul2020.csv

