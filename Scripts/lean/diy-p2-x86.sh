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
sed -i 's/192.168.1.1/10.10.66.1/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname、version
sed -i "s/hostname='LEDE'/hostname='NERV'/g" ./package/base-files/files/bin/config_generate
sed -i "s/LEDE /SEELE BUILT ON $(TZ=UTC-8 date "+%Y.%m.%d") @ LEDE /g" ./package/lean/default-settings/files/zzz-default-settings

sed -i '/CYXluq4wUazHjmCDBCqXF/d' ./package/lean/default-settings/files/zzz-default-settings

# Fetch custom packages, remove name-conflicting official ones, relocate into package/, then fix luci.mk include path
git clone --depth 1 https://github.com/sleel/mypkgs.git tmp_mypkgs
names=(); for d in tmp_mypkgs/*/; do names+=("$(basename "$d")"); done
expr=(-false); for n in "${names[@]}"; do expr+=(-o -name "$n"); done
find package feeds -type d \( "${expr[@]}" \) 2>/dev/null | xargs -r rm -rf
mv tmp_mypkgs/* package/
rm -rf tmp_mypkgs
find package -maxdepth 2 -name Makefile -exec sed -i 's|include \.\./\.\./luci\.mk|include $(TOPDIR)/feeds/luci/luci.mk|' {} +
