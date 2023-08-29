#!/bin/bash
set -e

cd $HOME/hlserver/tf2/tf

# SOAP-DM
wget -nv "https://github.com/sapphonie/SOAP-TF2DM/archive/master.zip" -O "soap-dm.zip"
unzip -o soap-dm.zip
cp -r SOAP-TF2DM-master/* ./
rm -r SOAP-TF2DM-master
rm soap-dm.zip

# Improved-Match-Timer
wget -nv "https://github.com/b4nnyBot/Progressive-Ruleset-Timer-Plugins/archive/master.zip" -O "improved-match-timer.zip"
unzip -o improved-match-timer.zip
cp -r Progressive-Ruleset-Timer-Plugins-main/* ./
rm -r Progressive-Ruleset-Timer-Plugins-main
rm improved-match-timer.zip

# Socket

wget -nv "https://forums.alliedmods.net/attachment.php?attachmentid=83286&d=1299423920" -O "socket.zip"
unzip -o socket.zip
rm socket.zip

# dhooks

wget -nv https://github.com/peace-maker/DHooks2/releases/download/v2.2.0-detours17/dhooks-2.2.0-detours17-sm110.zip
unzip -o dhooks-2.2.0-detours17-sm110.zip
rm dhooks-2.2.0-detours17-sm110.zip

# tf2-comp-fixes

wget -nv https://github.com/ldesgoui/tf2-comp-fixes/releases/download/v1.16.13/tf2-comp-fixes.zip
unzip -o tf2-comp-fixes.zip
rm tf2-comp-fixes.zip

# srctvplus
cd $HOME/hlserver/tf2/tf/addons

wget -nv https://github.com/dalegaard/srctvplus/releases/download/v3.0/srctvplus.vdf
wget -nv https://github.com/dalegaard/srctvplus/releases/download/v3.0/srctvplus.so

# Curl
cd $HOME/hlserver/tf2/tf/addons/sourcemod

wget -nv "https://github.com/sapphonie/SM-neocurl-ext/releases/download/v2.0.0-beta/sm-neocurl.zip"
unzip -o sm-neocurl.zip
rm sm-neocurl.zip

# Websockets

wget -nv "https://github.com/peace-maker/sm-websocket/archive/master.zip" -O "sm-websocket.zip"
unzip -o sm-websocket.zip
cp -r sm-websocket-master/* ./
rm -r sm-websocket-master
rm sm-websocket.zip

# Medic stats, SupStats, LogsTF, RecordSTV, WaitForStv, AFK, RestoreScore, FixStvSlot and Updater
cd $HOME/hlserver/tf2/tf/addons/sourcemod/plugins

wget -nv  --header="Accept: text/html" --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0" "http://sourcemod.krus.dk/f2-sourcemod-plugins.zip"
unzip -o f2-sourcemod-plugins.zip
rm f2-sourcemod-plugins.zip

# WebRCON
wget -nv https://github.com/spiretf/webrcon/raw/master/plugin/webrcon.smx

# whitelist.tf downloader
wget -nv https://github.com/spiretf/sm_whitelist/raw/master/plugin/whitelisttf.smx

# map downloader
wget -nv https://github.com/spiretf/mapdownloader/raw/master/plugin/mapdownloader.smx

# demos.tf uploader
wget -nv https://github.com/demostf/plugin/raw/ba1b642b92585af142a885af7159fa652916c6e7/demostf.smx

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

cd $HOME/hlserver/tf2/tf

wget -nv https://github.com/l-Aad-l/updated-pause-plugin/releases/download/v1.4.2/updated-pause-plugin.zip
unzip -o updated-pause-plugin.zip
rm updated-pause-plugin.zip

