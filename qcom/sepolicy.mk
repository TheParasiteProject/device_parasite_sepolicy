#
# This policy configuration will be used by all mediatek products
# that inherit from Lineage
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    device/parasite/sepolicy/qcom/dynamic \
    device/parasite/sepolicy/qcom/system
else
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/parasite/sepolicy/qcom/dynamic \
    device/parasite/sepolicy/qcom/vendor
endif
