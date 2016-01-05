#!/bin/bash
cd $HOME/hlserver/tf2/tf/cfg

ugc_cfg_version_9="v010316"
ugc_cfg_version_6="v121915"
ugc_cfg_version_4="v111415"

wget -nv "http://etf2l.org/configs/etf2l_configs.zip"
unzip etf2l_configs.zip

wget -nv "http://ugcleague.com/files/configs/UGC_HL_cfg_and_whitelist_${ugc_cfg_version_9}.zip"
wget -nv "http://ugcleague.com/files/configs/UGC_6v6_cfg_and_whitelist_${ugc_cfg_version_6}.zip"
wget -nv "http://ugcleague.com/files/configs/UGC_4v4_cfg_and_whitelist_${ugc_cfg_version_4}.zip"

unzip -o UGC_HL_cfg_and_whitelist_${ugc_cfg_version_9}.zip
unzip -o UGC_6v6_cfg_and_whitelist_${ugc_cfg_version_6}.zip
unzip -o UGC_4v4_cfg_and_whitelist_${ugc_cfg_version_4}.zip