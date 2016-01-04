#!/bin/bash
cd $HOME/hlserver/tf2/tf/maps

maps=("pl_badwater_pro_v9" "koth_ashville_rc1" "pl_swiftwater_ugc" "koth_product_rc8")

for map in ${maps[@]}; do
	wget -nv "http://fakkelbrigade.eu/maps/$map.bsp"
done
