#!/bin/bash
cd $HOME/hlserver/tf2/tf

# SOAP-DM
wget -nv "https://github.com/Lange/SOAP-TF2DM/archive/master.zip" -O "soap-dm.zip"
unzip soap-dm.zip
cp -r SOAP-TF2DM-master/* ./
rm -r SOAP-TF2DM-master
rm soap-dm.zip

# Socket

wget -nv "https://forums.alliedmods.net/attachment.php?attachmentid=83286&d=1299423920" -O "socket.zip"
unzip socket.zip
rm socket.zip

# srctvplus
cd $HOME/hlserver/tf2/tf/addons

wget -nv https://github.com/dalegaard/srctvplus/releases/download/v1.0/srctvplus.vdf
wget -nv https://github.com/dalegaard/srctvplus/releases/download/v1.0/srctvplus.so

# Curl
cd $HOME/hlserver/tf2/tf/addons/sourcemod

wget -nv "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/sourcemod-curl-extension/curl_1.3.0.0.zip"
unzip curl_1.3.0.0.zip
rm curl_1.3.0.0.zip
wget https://raw.githubusercontent.com/spiretf/docker-comp-server/master/curl.ext.so -O $HOME/hlserver/tf2/tf/addons/sourcemod/extensions/curl.ext.so

# Websockets

wget -nv "https://github.com/peace-maker/sm-websocket/archive/master.zip" -O "sm-websocket.zip"
unzip sm-websocket.zip
cp -r sm-websocket-master/* ./
rm -r sm-websocket-master
rm sm-websocket.zip

# Medic stats, SupStats, LogsTF, RecordSTV, WaitForStv, AFK, RestoreScore, FixStvSlot and Updater
cd $HOME/hlserver/tf2/tf/addons/sourcemod/plugins

wget -nv  --header="Accept: text/html" --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0" "http://sourcemod.krus.dk/f2-sourcemod-plugins.zip"
unzip f2-sourcemod-plugins.zip
rm f2-sourcemod-plugins.zip

# WebRCON
wget -nv https://github.com/spiretf/webrcon/raw/master/plugin/webrcon.smx

# whitelist.tf downloader
wget -nv https://github.com/spiretf/sm_whitelist/raw/master/plugin/whitelisttf.smx

# map downloader
wget -nv https://github.com/spiretf/mapdownloader/raw/master/plugin/mapdownloader.smx

# demos.tf uploader
wget -nv https://github.com/demostf/plugin/raw/master/demostf.smx

# autoexec
wget -nv https://github.com/spiretf/autoexec/raw/master/plugin/autoexec.smx

## Pause
wget -nv https://github.com/spiretf/docker-comp-server/raw/master/pause.smx

## NoCheats
wget -nv https://github.com/spiretf/nocheats/raw/master/plugin/nocheats.smx

## SetTeam
wget -nv https://github.com/spiretf/setteam/raw/master/plugin/setteam.smx

# proper-pregame
wget -nv https://github.com/AJagger/ProperPregame/raw/master/addons/sourcemod/plugins/properpregame.smx

chmod 0664 *.smx

printf "\nsm plugins unload properpregame\n" >> $HOME/hlserver/tf2/tf/cfg/sourcemod/soap_live.cfg
printf "\nsm plugins load properpregame\n" >> $HOME/hlserver/tf2/tf/cfg/sourcemod/soap_notlive.cfg
