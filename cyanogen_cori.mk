-include vendor/cyanogen/products/common_versions.mk

# Inherits
$(call inherit-product, device/samsung/cori/device_cori.mk)
$(call inherit-product, vendor/cyanogen/products/common_full.mk)
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# BootAnimation
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/ldpi/media/bootanimation.zip:system/media/bootanimation.zip

# LDPI overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ldpi

# Declarations
PRODUCT_RELEASE_NAME := MMB_GalaxyPocket
PRODUCT_VERSION_DEVICE_SPECIFIC :=
PRODUCT_NAME := cyanogen_cori
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := cori
PRODUCT_MODEL := GT-S5300
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=cori BUILD_ID=GRWK74 BUILD_FINGERPRINT=samsung/GT-S5300/GT-S5300:2.3.5/GINGERBREAD/XXKS2:user/test-keys PRIVATE_BUILD_DESC="GT-S5300-user 2.3.5 GINGERBREAD XXKS2 test-keys"
