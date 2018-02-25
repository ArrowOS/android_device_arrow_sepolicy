#
# This policy configuration will be used by all qcom products
# that inherit from Lineage
#

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/arrow/sepolicy/qcom/private

BOARD_SEPOLICY_DIRS += \
    device/arrow/sepolicy/qcom/common \
    device/arrow/sepolicy/qcom/$(TARGET_BOARD_PLATFORM)

