#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# KERNEL_PATCHVER
sed -i 's/^KERNEL_PATCHVER:=.*/KERNEL_PATCHVER:=6.12/' ./target/linux/x86/Makefile


# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
sed -i '/^src-git luci/d' feeds.conf.default
sed -i '/^src-git helloworld/d' feeds.conf.default
sed -i '$a src-git luci https://github.com/coolsnowwolf/luci.git;openwrt-24.10' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
sed -i '$a src-git nas https://github.com/linkease/nas-packages.git;master' feeds.conf.default
sed -i '$a src-git nas_luci https://github.com/linkease/nas-packages-luci.git;main' feeds.conf.default
sed -i '$a src-git istore https://github.com/linkease/istore.git;main' feeds.conf.default
git clone https://github.com/sleel/mypkgs.git tmp_mypkgs
mv tmp_mypkgs/* package/ && rm -rf tmp_mypkgs
sed -i 's|include ../../luci.mk|include $(TOPDIR)/feeds/luci/luci.mk|' package/luci-app-msd_lite/Makefile
