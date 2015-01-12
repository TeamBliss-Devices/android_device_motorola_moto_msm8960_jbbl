# Inherit some common Bliss stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/bliss/config/nfc_enhanced.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/qcom-common/overlay-cm

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Media
PRODUCT_COPY_FILES += \
    device/motorola/moto_msm8960_jbbl/config/media_codecs.xml:system/etc/media_codecs.xml \
    frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml

# Release name
PRODUCT_NAME := bliss_moto_msm8960_jbbl

PRODUCT_PROPERTY_OVERRIDES += ro.build.product=moto_msm8960_jbbl

$(call inherit-product, device/motorola/moto_msm8960_jbbl/full_moto_msm8960.mk)
