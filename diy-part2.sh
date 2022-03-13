#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# 说明：
#
# 除了第一行的#!/bin/bash不要动，其他的设置，前面带#表示不起作用，不带的表示起作用了（根据你自己需要打开或者关闭）
#
# 通过修改diy-part2.sh文件可以自定义默认IP，登陆密码等。按我的需要现在的默认IP为172.16.10.1
# 修改openwrt登陆地址,把下面的172.16.10.1修改成你想要的就可以了
sed -i 's/192.168.1.1/172.16.10.1/g' ./package/base-files/files/bin/config_generate

# 修改主机名字，把OpenWrt-123修改你喜欢的就行（不能纯数字或者使用中文）
# sed -i 's/OpenWrt/OpenWrt-R619AC/g' ./package/base-files/files/bin/config_generate

# 设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' ./package/lean/default-settings/files/zzz-default-settings
