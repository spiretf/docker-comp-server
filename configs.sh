#!/bin/bash
cd $HOME/hlserver/tf2/tf/cfg

ugc_cfg_version_9=$(wget -O - "http://www.ugcleague.com/files_tf2h.cfm" | grep -oP "UGC_HL_cfg_and_whitelist_(.*)\.zip" | grep -m1 -oP "v\d{6,8}")
ugc_cfg_version_6=$(wget -O - "http://www.ugcleague.com/files_tf26.cfm" | grep -oP "UGC_6v6_cfg_(.*)\.zip" | grep -m1 -oP "v\d{6,8}")
ugc_cfg_version_4=$(wget -O - "http://www.ugcleague.com/files_tf24.cfm" | grep -oP "UGC_4v4_cfg_and_whitelist_(.*)\.zip" | grep -m1 -oP "v\d{6,8}")

wget -nv "http://etf2l.org/configs/etf2l_configs.zip"
unzip etf2l_configs.zip

wget -nv --header "User-Agent: Mozilla/5.0 (Windows NT 6.0) AppleWebKit/537.11" "http://www.ugcleague.com/files/configs/UGC_HL_cfg_and_whitelist_${ugc_cfg_version_9}.zip"
wget -nv --header "User-Agent: Mozilla/5.0 (Windows NT 6.0) AppleWebKit/537.11" "http://www.ugcleague.net/files/configs/UGC_6v6_cfg_${ugc_cfg_version_6}.zip"
wget -nv --header "User-Agent: Mozilla/5.0 (Windows NT 6.0) AppleWebKit/537.11" "http://www.ugcleague.com/files/configs/UGC_4v4_cfg_and_whitelist_${ugc_cfg_version_4}.zip"

unzip -oj UGC_HL_cfg_and_whitelist_${ugc_cfg_version_9}.zip
unzip -o UGC_6v6_cfg_${ugc_cfg_version_6}.zip
unzip -o UGC_4v4_cfg_and_whitelist_${ugc_cfg_version_4}.zip

# dont set the server name 
sed -i '/hostname/d' ugc_*_custom.cfg

# WaitForSTV handles the stv delay better
sed -i 's/tv_delaymapchange_protect\s*"\?1"\?/tv_delaymapchange_protect 0/g' *.cfg

rm *.zip
