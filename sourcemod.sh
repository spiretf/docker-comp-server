#!/bin/bash
cd $HOME/hlserver/tf2/tf

mm_drop="https://mms.alliedmods.net/mmsdrop/1.10"
sm_drop="https://sm.alliedmods.net/smdrop/1.9"

mm_latest=$(wget -q -O - "$mm_drop/mmsource-latest-linux")
sm_latest=$(wget -q -O - "$sm_drop/sourcemod-latest-linux")

wget -nv "$mm_drop/$mm_latest"
wget -nv "$sm_drop/$sm_latest"

tar -xvzf "$mm_latest"
tar -xvzf "$sm_latest"

rm "$mm_latest" "$sm_latest"

# prevent automatic map switch
rm addons/sourcemod/plugins/{nextmap.smx,funcommands.smx,funvotes.smx}
