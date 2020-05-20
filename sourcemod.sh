#!/bin/bash
cd $HOME/hlserver/tf2/tf

mm_url=$(wget -q -O - "https://www.metamodsource.net/downloads.php?branch=stable" | grep -oP -m1 "https://[a-z.]+/mmsdrop/[0-9.]+/mmsource-(.*)-linux.tar.gz")
sm_url=$(wget -q -O - "http://www.sourcemod.net/downloads.php?branch=stable" | grep -oP -m1 "https://[a-z.]+/smdrop/[0-9.]+/sourcemod-(.*)-linux.tar.gz")

wget -nv $mm_url
wget -nv $sm_url

tar -xvzf mmsource-*-linux.tar.gz
tar -xvzf sourcemod-*-linux.tar.gz

rm *.tar.gz

# prevent automatic map switch
rm addons/sourcemod/plugins/{nextmap.smx,funcommands.smx,funvotes.smx}
