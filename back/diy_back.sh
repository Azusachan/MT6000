#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: leopard
# Blog: https://p3terx.com
# 原来
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.8.1/g' package/base-files/files/bin/config_generate

# 删除原主题包
# rm -rf package/lean/luci-theme-argon
# rm -rf openwrt/package/lean/luci-theme-netgear

# Modify the version number
sed -i 's/OpenWrt/Leopard build $(date "+%Y.%m.%d") @ OpenWrt/g' package/lean/default-settings/files/zzz-default-settings

# Modify default theme
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 添加新的主题包
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/lean/luci-theme-opentomcat

#增加koolddns
# git clone https://github.com/leopardciaw/luci-app-koolddns.git package/lean/luci-app-koolddns

# Add kernel build user
[ -z $(grep "CONFIG_KERNEL_BUILD_USER=" .config) ] &&
    echo 'CONFIG_KERNEL_BUILD_USER="Leopard"' >>.config ||
    sed -i 's@\(CONFIG_KERNEL_BUILD_USER=\).*@\1$"P3TERX"@' .config

# Add kernel build domain
[ -z $(grep "CONFIG_KERNEL_BUILD_DOMAIN=" .config) ] &&
    echo 'CONFIG_KERNEL_BUILD_DOMAIN="GitHub Actions"' >>.config ||
    sed -i 's@\(CONFIG_KERNEL_BUILD_DOMAIN=\).*@\1$"GitHub Actions"@' .config

# 增加ssr
# git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
git clone https://github.com/fw876/helloworld.git package/openwrt-packages/luci-app-ssr-plus

