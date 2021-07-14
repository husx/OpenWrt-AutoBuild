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


#1. 修改默认的IP
sed -i 's/192.168.1.1/192.168.10.254/g' package/base-files/files/bin/config_generate

#2. 修改主机名
sed -i '/uci commit system/i\uci set system.@system[0].hostname='Lienol_OpenWrt'' package/default-settings/files/zzz-default-settings

#3. 设置密码为空
#sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

#4. 版本号里显示一个自己的名字
sed -i "s/OpenWrt /Husx build $(TZ=UTC-8 date "+%Y.%m.%d") @ Lienol_OpenWrt 19.07 /g" package/default-settings/files/zzz-default-settings
