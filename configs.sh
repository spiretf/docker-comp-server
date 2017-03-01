#!/bin/bash
cd $HOME/hlserver/tf2/tf/cfg

ugc_cfg_version_9=$(wget -O - "http://ugcleague.com/files_tf2h.cfm" | grep -oP "UGC_HL_cfg_and_whitelist_(.*)\.zip" | grep -m1 -oP "v\d{6}")
ugc_cfg_version_6=$(wget -O - "http://ugcleague.com/files_tf26.cfm" | grep -oP "UGC_6v6_cfg_(.*)\.zip" | grep -m1 -oP "v\d{6}")
ugc_cfg_version_4=$(wget -O - "http://ugcleague.com/files_tf24.cfm" | grep -oP "UGC_4v4_cfg_and_whitelist_(.*)\.zip" | grep -m1 -oP "v\d{6}")

echo $ugc_cfg_version_9

wget -nv "http://etf2l.org/configs/etf2l_configs.zip"
unzip etf2l_configs.zip

wget -nv "http://ugcleague.com/files/configs/UGC_HL_cfg_and_whitelist_${ugc_cfg_version_9}.zip"
wget -nv "http://ugcleague.com/files/configs/UGC_6v6_cfg_${ugc_cfg_version_6}.zip"
wget -nv "http://ugcleague.com/files/configs/UGC_4v4_cfg_and_whitelist_${ugc_cfg_version_4}.zip"

unzip -o UGC_HL_cfg_and_whitelist_${ugc_cfg_version_9}.zip
unzip -o UGC_6v6_cfg_and_whitelist_${ugc_cfg_version_6}.zip
unzip -o UGC_4v4_cfg_and_whitelist_${ugc_cfg_version_4}.zip

rm *.zip
