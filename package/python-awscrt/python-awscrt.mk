################################################################################
#
# python-awscrt
#
################################################################################

PYTHON_AWSCRT_VERSION = 0.19.8
PYTHON_AWSCRT_SOURCE = awscrt-$(PYTHON_AWSCRT_VERSION).tar.gz
PYTHON_AWSCRT_SITE = https://files.pythonhosted.org/packages/57/9b/162b1639241a28a1fe2e73167751042ef1b21528ea9f3ee153dd4bd813e8
PYTHON_AWSCRT_SETUP_TYPE = setuptools
PYTHON_AWSCRT_LICENSE = Apache-2.0
PYTHON_AWSCRT_LICENSE_FILES = LICENSE crt/aws-checksums/LICENSE crt/aws-c-compression/LICENSE crt/aws-c-http/LICENSE crt/s2n/LICENSE crt/aws-c-auth/LICENSE crt/aws-c-io/LICENSE crt/aws-c-cal/LICENSE crt/aws-c-sdkutils/LICENSE crt/aws-c-s3/LICENSE crt/aws-c-common/LICENSE crt/aws-lc/LICENSE crt/aws-lc/third_party/fiat/LICENSE crt/aws-c-event-stream/LICENSE crt/aws-c-mqtt/LICENSE

TARGET_MAKE_ENV += AWS_CRT_BUILD_USE_SYSTEM_LIBCRYPTO=1

$(eval $(python-package))
