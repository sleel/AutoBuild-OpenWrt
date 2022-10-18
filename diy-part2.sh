#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i '/DTS_DIR:=$(LINUX_DIR)/a\BUILD_DATE_PREFIX := $(shell date +'%F')' ./include/image.mk
sed -i 's/IMG_PREFIX:=/IMG_PREFIX:=$(BUILD_DATE_PREFIX)-/g' ./include/image.mk
ZZZ="package/lean/default-settings/files/zzz-default-settings"
sed -i '/CYXluq4wUazHjmCDBCqXF/d' $ZZZ
sed -i "s/OpenWrt /SEELE COMPILED ON $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" $ZZZ
sed -i "s/hostname='OpenWrt'/hostname='NERV'/g" ./package/base-files/files/bin/config_generate

sed -i 's/bootstrap/argon-18.06/g' ./feeds/luci/collections/luci/Makefile
rm -rf ./feeds/luci/luci-theme-argon
