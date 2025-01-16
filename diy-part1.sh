#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================
echo "src-git openwrt_passwall https://github.com/xiaorouji/openwrt-passwall.git" >> "feeds.conf.default"
echo "src-git openwrt_passwall2 https://github.com/xiaorouji/openwrt-passwall2.git" >> "feeds.conf.default"
echo "src-git openwrt_passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git" >> "feeds.conf.default"
echo "src-git an https://github.com/Azusachan/openwrt-package.git" >> "feeds.conf.default"
