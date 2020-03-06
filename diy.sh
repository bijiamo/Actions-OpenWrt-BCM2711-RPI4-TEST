#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
#svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/ipv6-helper package/ipv6-helper
#svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/automount package/automount
#svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/autosamba package/autosamba
git clone https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
git clone https://github.com/lisaac/luci-app-dockerman package/luci-app-dockerman
git clone https://github.com/lisaac/luci-lib-docker package/luci-lib-docker
git clone https://github.com/lisaac/luci-plugin-samba package/luci-plugin-samba
git clone https://github.com/pymumu/luci-app-smartdns package/luci-app-smartdns
git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic package/luci-app-unblockneteasemusic
git clone https://github.com/kuoruan/luci-app-kcptun package/luci-app-kcptun
git clone https://github.com/honwen/luci-app-shadowsocks package/luci-app-shadowsocks
git clone https://github.com/honwen/luci-app-shadowsocksr package/luci-app-shadowsocksr
git clone https://github.com/kuoruan/luci-app-v2ray package/luci-app-v2ray
git clone https://github.com/frainzy1477/luci-app-clash package/luci-app-clash
svn checkout https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
sed -i 's/VHT80/VHT40/' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/disabled=1/disabled=0/' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/\..\/..\/luci.mk/$(TOPDIR)\/feeds\/luci\/luci.mk/' package/luci-app-smartdns/Makefile
mkdir -p package/parted
mv package/luci-app-diskman/Parted.Makefile package/parted/Makefile
