#!/bin/bash
cd $HOME/hlserver/tf2/tf

mm_version="1.10.7-git952"
sm_version="1.8.0-git5891"

mm_url="http://www.metamodsource.net/mmsdrop/1.10/mmsource-${mm_version}-linux.tar.gz"
sm_url="http://www.sourcemod.net/smdrop/1.8/sourcemod-${sm_version}-linux.tar.gz"

wget -nv $mm_url
wget -nv $sm_url

tar -xvzf "mmsource-${mm_version}-linux.tar.gz"
tar -xvzf "sourcemod-${sm_version}-linux.tar.gz"

rm *.tar.gz
