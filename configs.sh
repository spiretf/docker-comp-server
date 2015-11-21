#!/bin/bash
cd $HOME/hlserver/tf2/tf/cfg

ugc_cfg_version="v111415"

wget -nv "http://etf2l.org/configs/etf2l_configs.zip"
unzip etf2l_configs.zip

wget -nv "http://ugcleague.com/files/configs/UGC_HL_cfg_and_whitelist_${ugc_cfg_version}.zip"
wget -nv "http://ugcleague.com/files/configs/UGC_6v6_cfg_and_whitelist_${ugc_cfg_version}.zip"
wget -nv "http://ugcleague.com/files/configs/UGC_4v4_cfg_and_whitelist_${ugc_cfg_version}.zip"

unzip -o UGC_HL_cfg_and_whitelist_${ugc_cfg_version}.zip
unzip -o UGC_6v6_cfg_and_whitelist_${ugc_cfg_version}.zip
unzip -o UGC_4v4_cfg_and_whitelist_${ugc_cfg_version}.zip