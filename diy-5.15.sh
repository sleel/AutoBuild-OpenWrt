#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=5.15/g' ./target/linux/x86/Makefile
sed -i 's/KERNEL_PATCHVER:=5.10/KERNEL_PATCHVER:=5.15/g' ./target/linux/x86/Makefile

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
#echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
#sed -i '$a src-git nas https://github.com/linkease/nas-packages.git;master' feeds.conf.default
#sed -i '$a src-git nas_luci https://github.com/linkease/nas-packages-luci.git;main' feeds.conf.default
#git clone https://github.com/linkease/istore.git package/lean/istore
#git clone https://github.com/linkease/istore-ui.git package/lean/istore-ui

sed -i '$a src-git jerryk https://github.com/jerrykuku/openwrt-package' feeds.conf.default
svn co https://github.com/linkease/istore/trunk/luci/luci-app-store package/luci-app-store
git clone https://github.com/firker/diy-ziyong.git package/diy-ziyong
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git  package/luci-theme-argon-18.06
git clone -b 18.06 https://github.com/garypang13/luci-theme-edge.git package/luci-theme-edge
git clone https://github.com/sirpdboy/luci-theme-opentopd.git package/luci-theme-opentopd
git clone https://github.com/thinktip/luci-theme-neobird.git package/luci-theme-neobird
