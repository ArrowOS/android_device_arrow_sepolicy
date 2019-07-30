#
# This policy configuration will be used by all qcom products
# that inherit from arrow
#

ifeq ($(TARGET_COPY_OUT_device), device)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_device_SEPOLICY ?= true
endif
endif

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    vendor/arrow/sepolicy/qcom/private

ifeq ($(TARGET_USES_PREBUILT_device_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    vendor/arrow/sepolicy/qcom/dynamic
else
BOARD_SEPOLICY_DIRS += \
    vendor/arrow/sepolicy/qcom/dynamic \
    vendor/arrow/sepolicy/qcom/vendor
endif
