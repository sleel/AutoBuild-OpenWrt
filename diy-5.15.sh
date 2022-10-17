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
rm -rf ./feeds/luci/themes/luci-theme-argon git clone https://github.com/jerrykuku/luci-theme-argon.git ./feeds/luci/themes/luci-theme-argon
git clone https://github.com/jjm2473/luci-app-argon-config.git package/lean/luci-app-argon-config
