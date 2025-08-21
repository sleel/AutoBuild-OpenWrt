#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

ZZZ="package/lean/default-settings/files/zzz-default-settings"
sed -i '/CYXluq4wUazHjmCDBCqXF/d' $ZZZ
sed -i "s/LEDE /SEELE BUILT ON $(TZ=UTC-8 date "+%Y.%m.%d") @ LEDE /g" $ZZZ
sed -i "s/hostname='LEDE'/hostname='NERV'/g" ./package/base-files/luci2/bin/config_generate
rm -rf feeds/smpackage/{base-files,dnsmasq,firewall*,fullconenat,libnftnl,nftables,ppp,opkg,ucl,upx,vsftpd*,miniupnpd-iptables,wireless-regdb}

for pkg in msd_lite luci-app-msd_lite; do
    rm -rf feeds/*/$pkg package/feeds/*/$pkg package/$pkg
done
git clone --depth=1 https://github.com/sleel/msd-lite-packages mypkgs
cp -a mypkgs/msd_lite package/msd_lite
cp -a mypkgs/luci-app-msd_lite package/luci-app-msd_lite
rm -rf mypkgs
