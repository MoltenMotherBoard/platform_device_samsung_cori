# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# BootAnimation
TARGET_BOOTANIMATION_NAME := vertical-240x320

# Inherit device configuration for tassve
$(call inherit-product, device/samsung/tassve/full_tassve.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_tassve
PRODUCT_DEVICE := tassve
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-S5570i
PRODUCT_MANUFACTURER := Samsung
PRODUCT_CHARACTERISTICS := phone

PRODUCT_RELEASE_NAME := GalaxyTassVE
PRODUCT_VERSION_DEVICE_SPECIFIC := -GT-S5570i
