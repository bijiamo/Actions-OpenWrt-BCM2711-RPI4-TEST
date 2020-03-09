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
#svn checkout https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
#git clone https://github.com/pymumu/luci-app-smartdns package/luci-app-smartdns
git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic package/luci-app-unblockneteasemusic
#git clone https://github.com/kuoruan/luci-app-kcptun package/luci-app-kcptun
git clone https://github.com/frainzy1477/luci-app-clash package/luci-app-clash
#开启wifi
sed -i 's/VHT80/VHT40/' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/disabled=1/disabled=0/' package/kernel/mac80211/files/lib/wifi/mac80211.sh
#默认密码为password
sed -i 's/root::0:0:99999:7:::/root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0:0:99999:7:::/' package/base-files/files/etc/shadow
#设置北京时间
sed -i "s/'UTC'/'CST-8'\n                set system.@system[-1].zonename='Asia\/Shanghai'/g" package/base-files/files/bin/config_generate
#sed -i 's/\..\/..\/luci.mk/$(TOPDIR)\/feeds\/luci\/luci.mk/' package/luci-app-smartdns/Makefile
sed -i 's/+luci +luci-base +wget +iptables +coreutils-base64 +coreutils +coreutils-nohup +bash +ipset +libustream-openssl +libopenssl +openssl-util +curl +jsonfilter +ca-certificates/+wget +iptables +coreutils-base64 +coreutils +coreutils-nohup +bash +ipset +libustream-openssl +libopenssl +openssl-util +curl +jsonfilter +ca-certificates/' package/luci-app-clash/Makefile
#关闭http转向https
sed -i 's/option redirect_https\t1/option redirect_https\t0/' package/network/services/uhttpd/files/uhttpd.config
