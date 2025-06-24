################################################################################
#
# python-chrome-devtools-protocol
#
################################################################################

PYTHON_CHROME_DEVTOOLS_PROTOCOL_VERSION = 0.4.0
PYTHON_CHROME_DEVTOOLS_PROTOCOL_SOURCE = chrome-devtools-protocol-$(PYTHON_CHROME_DEVTOOLS_PROTOCOL_VERSION).tar.gz
PYTHON_CHROME_DEVTOOLS_PROTOCOL_SITE = https://files.pythonhosted.org/packages/79/49/c47ed78b619abe76d76032af2739a3ea2b4ee96b7400ea2f09b5ae7cbacb
PYTHON_CHROME_DEVTOOLS_PROTOCOL_SETUP_TYPE = setuptools
PYTHON_CHROME_DEVTOOLS_PROTOCOL_LICENSE = MIT
PYTHON_CHROME_DEVTOOLS_PROTOCOL_LICENSE_FILES = LICENSE

$(eval $(python-package))
