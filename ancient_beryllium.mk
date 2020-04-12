#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/beryllium/device.mk)
$(call inherit-product, vendor/xiaomi/firmware/beryllium/firmware.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_INCLUDE_WIFI_EXT := true
ANCIENT_BUILD_TYPE := PRIMEVAL
CURRENT_BUILD_TYPE :=gapps
TARGET_GAPPS_ARCH :=arm64
#$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := ancient_beryllium
PRODUCT_DEVICE := beryllium
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := POCO F1
PRODUCT_MANUFACTURER := Xiaomi


BUILD_FINGERPRINT := "google/coral/coral:10/QQ2A.200305.003/6156912:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="beryllium-user 10 QKQ1.190828.002 V11.0.6.0.QEJMIXM release-keys" \
    PRODUCT_NAME="beryllium" \

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
