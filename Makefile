include $(TOPDIR)/rules.mk

PKG_NAME:=ddns
PKG_VERSION:=1.1.1
PKG_RELEASE:=1

PKG_LICENSE:=GPL-2.0
PKG_MAINTAINER:=

include $(INCLUDE_DIR)/package.mk

define Package/ddns
	SECTION:=net
	CATEGORY:=Network
	TITLE:=Cloudlfare DDNS for OpenWrt.
	PKGARCH:=all
	EXTRA_DEPENDS:=curl
	URL:=https://github.com/heiher/openwrt-ddns
endef

define Package/ddns/description
Cloudflare Dynamic DNS Client.
endef

define Package/ddns/conffiles
/etc/config/ddns
endef

define Package/ddns/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) files/ddns $(1)/usr/bin/ddns
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_DATA) files/config $(1)/etc/config/ddns
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) files/init $(1)/etc/init.d/ddns
endef

define Build/Configure
endef
define Build/Compile
endef

$(eval $(call BuildPackage,ddns))
