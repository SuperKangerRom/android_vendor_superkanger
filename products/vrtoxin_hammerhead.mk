# Include VRToxin common configuration
include vendor/vrtoxin/config/common.mk

# Inherit AOSP device configuration
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Override AOSP build properties
PRODUCT_NAME := vrtoxin_hammerhead
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="hammerhead" BUILD_FINGERPRINT="google/hammerhead/hammerhead:6.0/MRA58N/2289998:user/release-keys" PRIVATE_BUILD_DESC="hammerhead-user 6.0 MRA58N 2289998 release-keys"
# Kernel inline build
TARGET_KERNEL_SOURCE := kernel/lge/hammerhead
TARGET_KERNEL_CONFIG := vrtoxin_hammerhead_defconfig

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vrtoxin/prebuilt/bootanimation/bootanimation_1080.zip:system/media/bootanimation.zip
