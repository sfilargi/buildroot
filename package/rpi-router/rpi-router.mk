RPI_ROUTER_VERSION = 0.1
RPI_ROUTER_SITE = $(CURDIR)/package/rpi-router/src
RPI_ROUTER_SITE_METHOD = local

define RPI_ROUTER_INSTALL_TARGET_CMDS
        $(INSTALL) -D -m 0755 $(@D)/rpi-router $(TARGET_DIR)/sbin
	$(INSTALL) -D -m 0755 $(@D)/rpi-router.sh $(TARGET_DIR)/etc/init.d/S99rpi-router
endef

$(eval $(generic-package))

