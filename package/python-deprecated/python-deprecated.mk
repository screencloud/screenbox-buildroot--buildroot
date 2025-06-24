################################################################################
#
# python-deprecated
#
################################################################################

PYTHON_DEPRECATED_VERSION = 1.2.14
PYTHON_DEPRECATED_SOURCE = Deprecated-$(PYTHON_DEPRECATED_VERSION).tar.gz
PYTHON_DEPRECATED_SITE = https://files.pythonhosted.org/packages/92/14/1e41f504a246fc224d2ac264c227975427a85caf37c3979979edb9b1b232
PYTHON_DEPRECATED_SETUP_TYPE = setuptools
PYTHON_DEPRECATED_LICENSE = MIT
PYTHON_DEPRECATED_LICENSE_FILES = LICENSE.rst docs/source/license.rst

$(eval $(python-package))
