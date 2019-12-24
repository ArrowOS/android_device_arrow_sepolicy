#
# This policy configuration will be used by all qcom products
# that inherit from Arrow
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/arrow/sepolicy/qcom/private

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/arrow/sepolicy/qcom/dynamic \
    device/arrow/sepolicy/qcom/system
else
BOARD_SEPOLICY_DIRS += \
    device/arrow/sepolicy/qcom/dynamic \
    device/arrow/sepolicy/qcom/vendor
endif
