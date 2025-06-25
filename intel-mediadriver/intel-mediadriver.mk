################################################################################
# Package: intel-mediadriver
################################################################################

INTEL_MEDIADRIVER_VERSION = 23.2.2
INTEL_MEDIADRIVER_SITE = https://github.com/intel/media-driver.git
INTEL_MEDIADRIVER_SITE_METHOD = git
INTEL_MEDIADRIVER_LICENSE = MIT
INTEL_MEDIADRIVER_LICENSE_FILES = LICENSE.md
INTEL_MEDIADRIVER_DEPENDENCIES = libva libdrm

define INTEL_MEDIADRIVER_CONFIGURE_CMDS
	cd $(@D) && mkdir -p build
endef

define INTEL_MEDIADRIVER_BUILD_CMDS
	cd $(@D)/build && cmake .. \
		-DCMAKE_INSTALL_PREFIX=/usr \
		-DLIBVA_DRIVERS_PATH=/usr/lib/dri \
		-DENABLE_NONFREE_KERNELS=ON \
		-DCMAKE_BUILD_TYPE=Release
	$(MAKE) -C $(@D)/build
endef

define INTEL_MEDIADRIVER_INSTALL_TARGET_CMDS
	$(MAKE) -C $(@D)/build install DESTDIR=$(TARGET_DIR)
endef

$(eval $(generic-package))
