$(call inherit-product, device/google/sprout4/sprout4.mk)

# Common Toxic stuff
$(call inherit-product, vendor/vrtoxin/config/common.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=6.0/MRA58M/2280749:user/release-keys PRIVATE_BUILD_DESC="sprout-user 6.0 MRA58M 2280749 release-keys"

PRODUCT_NAME := vrtoxin_sprout4
PRODUCT_DEVICE :=sprout4
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google
PRODUCT_MODEL := A1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="sprout4"

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/vrtoxin/prebuilt/bootanimation/bootanimation_1080.zip:system/media/bootanimation.zip

