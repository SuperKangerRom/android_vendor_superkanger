# Include VRToxin common configuration
include vendor/vrtoxin/config/common.mk

# Inherit AOSP device configuration
$(call inherit-product, device/htc/flounder/aosp_flounder.mk)

# Override AOSP build properties
PRODUCT_NAME := vrtoxin_flounder
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 9
PRODUCT_MANUFACTURER := htc
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="flounder" BUILD_FINGERPRINT="google/flounder/flounder:6.0/MRA58K/2256973:user/release-keys" PRIVATE_BUILD_DESC="flounder-user 6.0 MRA58K 2256973 release-keys"

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vrtoxin/prebuilt/bootanimation/bootanimation_1080.zip:system/media/bootanimation.zip
