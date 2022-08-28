RPI_FAN_VERSION = 0.1
RPI_FAN_SITE = $(CURDIR)/package/rpi-fan/src
RPI_FAN_SITE_METHOD = local

define RPI_FAN_BUILD_CMDS
        $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define RPI_FAN_INSTALL_TARGET_CMDS
        $(INSTALL) -D -m 0755 $(@D)/rpi-fan $(TARGET_DIR)/bin
	$(INSTALL) -D -m 0755 $(@D)/rpi-fan.sh $(TARGET_DIR)/etc/init.d/S98rpi-fan
endef

$(eval $(generic-package))

