#!/bin/bash
set -e

cd $HOME/hlserver/tf2/tf/maps

maps=()

for map in ${maps[@]}; do
	wget -nv "http://fakkelbrigade.eu/maps/$map.bsp"
done
