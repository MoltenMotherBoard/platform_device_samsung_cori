# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# BootAnimation
TARGET_BOOTANIMATION_NAME := vertical-240x320

# Inherit device configuration for cori
$(call inherit-product, device/samsung/cori/full_cori.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_cori
PRODUCT_DEVICE := cori
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-S5300
PRODUCT_MANUFACTURER := Samsung
PRODUCT_CHARACTERISTICS := phone

PRODUCT_RELEASE_NAME := GalaxyCori
PRODUCT_VERSION_DEVICE_SPECIFIC := -GT-S5300
