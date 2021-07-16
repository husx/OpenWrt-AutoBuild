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
sed -i 's/192.168.1.1/192.168.10.252/g' package/base-files/files/bin/config_generate

# 增加个性名字${Author}默认为你的github账号
sed -i "s/OpenWrt /Compiled in $(TZ=UTC-8 date "+%Y.%m.%d") @ Lean_OpenWrt /g" package/lean/default-settings/files/zzz-default-settings