# Inherit GSM common stuff.
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/ace

# Inherit AOSP device configuration for ace
$(call inherit-product, device/htc/ace/full_ace.mk)

# Setup device specific product configuration.
PRODUCT_NAME := aokp_ace
PRODUCT_DEVICE := ace
PRODUCT_BRAND := htc_wwe
PRODUCT_MODEL := Desire HD
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_ace BUILD_FINGERPRINT="google/yakju/maguro:4.2.1/JOP40D/533553:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.2.1 JOP40D 533553 release-keys"

# boot animation
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip
