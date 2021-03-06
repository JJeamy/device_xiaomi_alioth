#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common PixelPlus-UI stuff.
$(call inherit-product, vendor/dot/config/common.mk)
WITH_GAPPS := true
TARGET_INCLUDE_WIFI_EXT := true
TARGET_BOOT_ANIMATION_RES := 1440

# Charging Animation
TARGET_INCLUDE_PIXEL_CHARGER := true

# dotOS Official
DOT_OFFICIAL := false
IS_PHONE := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := true
PPUI_MAINTAINER := johnmart19

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)

PRODUCT_NAME := dot_alioth
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="alioth_global-user 11 RKQ1.200826.002 V12.5.6.0.RKHMIXM release-keys"

BUILD_FINGERPRINT := Redmi/alioth_global/alioth:11/RKQ1.200826.002/V12.5.6.0.RKHMIXM:user/release-keys
