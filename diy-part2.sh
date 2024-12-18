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
sed -i "s/LEDE /SEELE COMPILED ON $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" $ZZZ
sed -i 's/OpenWrt/NERV-SEELE/g' package/base-files/files/bin/config_generate
rm -rf ./feeds/packages/net/ddns-scripts/files/usr/lib/ddns/update_cloudflare_com_v4.sh
curl -fsSL  https://raw.githubusercontent.com/sleel/AutoBuild-OpenWrt/refs/heads/main/update_cloudflare_com_v4.sh > ./feeds/packages/net/ddns-scripts/files/usr/lib/ddns/update_cloudflare_com_v4.sh
