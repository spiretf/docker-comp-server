#!/bin/bash
cd $HOME/hlserver/tf2/tf/maps

maps=("pl_badwater_pro_v8" "pl_badwater_pro_v9")

for map in ${maps[@]}; do
	wget -nv "http://fakkelbrigade.eu/maps/$map.bsp"
done
