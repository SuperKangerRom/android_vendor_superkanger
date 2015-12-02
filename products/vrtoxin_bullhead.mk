# Inherit AOSP device configuration for angler.
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

# Inherit common product files.
$(call inherit-product, vendor/vrtoxin/config/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vrtoxin_bullhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := bullhead
PRODUCT_MODEL := Nexus 5X
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bullhead \
    BUILD_FINGERPRINT=google/bullhead/bullhead:6.0/MDB08M/2353240:user/release-keys \
    PRIVATE_BUILD_DESC="bullhead-user 6.0 MDB08M 2353240 release-keys"

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/vrtoxin/prebuilt/bootanimation/bootanimation_1080.zip:system/media/bootanimation.zip
