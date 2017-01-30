################################################################################
#
# sdburner
#
################################################################################

SDBURNER_VERSION = 6e58a9da0b94979e761af787da3c26a679abdb6a
SDBURNER_SITE = $(call github,fhunleth,sdburner,$(SDBURNER_VERSION))
#SDBURNER_SITE = /home/fhunleth/experiments/sdburner
#SDBURNER_SITE_METHOD = local
SDBURNER_LICENSE = Apache2
SDBURNER_DEPENDENCIES = qt5base fwup

define SDBURNER_CONFIGURE_CMDS
	cd $(@D) && $(QT5_QMAKE) -after "target.path=$(TARGET_DIR)/usr/bin" sdburner.pro
endef

define SDBURNER_BUILD_CMDS
	$(MAKE) -C $(@D)
endef

define SDBURNER_INSTALL_TARGET_CMDS
	$(MAKE) -C $(@D) install
endef

$(eval $(generic-package))
