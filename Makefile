include $(TOPDIR)/rules.mk

PKG_NAME:=njit-client
PKG_RELEASE:=1

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk


define Package/njit-client
	SECTION:=net
	CATEGORY:=Network
	TITLE:=njit-client
	DEPENDS:=+libpcap +libopenssl
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Package/njit-client/install
	$(INSTALL_DIR) $(1)/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/njit-client $(1)/bin/
endef

$(eval $(call BuildPackage,njit-client))
