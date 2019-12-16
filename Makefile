# 
# Copyright 2018-2020 Nick Peng <pymumu@gmail.com>
# Licensed to the public under the GPL V3 License.

include $(TOPDIR)/rules.mk

PKG_LICENSE:=GPL-3.0
PKG_MAINTAINER:=Nick Peng <pymumu@gmail.com>
PKG_NAME:=luci-app-smartdns
PKG_VERSION:=1.2019
PKG_RELEASE:=28

LUCI_TITLE:=LuCI for smartdns
LUCI_DESCRIPTION:=Provides Luci for smartdns
LUCI_DEPENDS:=+ip6tables-mod-nat +smartdns
LUCI_PKGARCH:=all

define Package/$(PKG_NAME)/config
# shown in make menuconfig <Help>
help
	$(LUCI_TITLE)
	Version: $(PKG_VERSION)-$(PKG_RELEASE)
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
