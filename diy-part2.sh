#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
# sed '1,3s/my/your/g'
# sed -i '93s/0xf60000/0x1fb0000/g' target/
#=================================================
# Modify default IP
# sed -i 's/15744/32448/g'
#sed -i 's/192.168.1.1/192.168.8.1/g' package/base-files/files/bin/config_generate
# sed -i 's/192.168.1.1/192.168.5.202/g' package/base-files/files/bin/config_generate

# Modify hostname
# sed -i 's/OpenWrt/Acrh17/g' package/base-files/files/bin/config_generate

# 取消bootstrap为默认主题
# sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap

# 删除原主题包
# rm -rf package/lean/luci-theme-argon
# rm -rf openwrt/package/lean/luci-theme-netgear

# 添加新的主题包
# git clone https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
# git clone https://github.com/sypopo/luci-theme-atmaterial.git package/lean/luci-theme-atmaterial
# git clone https://github.com/sypopo/luci-theme-argon-mc.git package/lean/luci-theme-argon-mc
# git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/lean/luci-theme-opentomcat
# git clone https://github.com/garypang13/luci-theme-edge.git package/lean/luci-theme-edge
git clone -b master https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
git clone -b master https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config

rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang feeds/packages/lang/golang
