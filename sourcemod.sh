#!/bin/bash
cd $HOME/hlserver/tf2/tf

mm_url=$(wget -q -O - "https://www.metamodsource.net/snapshots" | grep -oP -m1 "http://www.metamodsource.net/mmsdrop/[0-9.]+/mmsource-(.*)-linux.tar.gz")
sm_url=$(wget -q -O - "http://www.sourcemod.net/downloads.php?branch=dev" | grep -oP -m1 "http://www.sourcemod.net/smdrop/[0-9.]+/sourcemod-(.*)-linux.tar.gz")

wget -nv $mm_url
wget -nv $sm_url

tar -xvzf mmsource-*-linux.tar.gz
tar -xvzf sourcemod-*-linux.tar.gz

rm *.tar.gz
