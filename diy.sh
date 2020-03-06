#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
git clone https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
#git clone https://github.com/lisaac/luci-app-dockerman package/luci-app-dockerman
#git clone https://github.com/lisaac/luci-lib-docker package/luci-lib-docker
git clone https://github.com/pymumu/luci-app-smartdns package/luci-app-smartdns
svn checkout https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
#svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean package/lean/
#rm -rf package/lean/luci-lib-docker package/lean/luci-app-dockerman package/lean/luci-theme-argon package/lean/luci-theme-netgear package/lean/frpc package/lean/luci-app-frpc
sed -i 's/VHT80/VHT40/' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/disabled=1/disabled=0/' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/\..\/..\/luci.mk/$(TOPDIR)\/feeds\/luci\/luci.mk/' package/luci-app-smartdns/Makefile
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/ipv6-helper package/ipv6-helper
