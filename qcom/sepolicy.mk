#
# This policy configuration will be used by all qcom products
# that inherit from arrow
#

ifeq ($(TARGET_COPY_OUT_device), device)
ifeq ($(BOARD_deviceIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_device_SEPOLICY ?= true
endif
endif

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/arrow/sepolicy/qcom/private

ifeq ($(TARGET_USES_PREBUILT_device_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/arrow/sepolicy/qcom/dynamic
else
BOARD_SEPOLICY_DIRS += \
    device/arrow/sepolicy/qcom/dynamic \
    device/arrow/sepolicy/qcom/vendor
endif
