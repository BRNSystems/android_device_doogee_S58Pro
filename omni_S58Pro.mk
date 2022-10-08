#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from S58Pro device
$(call inherit-product, device/doogee/S58Pro/device.mk)

PRODUCT_DEVICE := S58Pro
PRODUCT_NAME := omni_S58Pro
PRODUCT_BRAND := DOOGEE
PRODUCT_MODEL := S58Pro
PRODUCT_MANUFACTURER := doogee

PRODUCT_GMS_CLIENTID_BASE := android-doogee

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k62v1_64_bsp-user 10 QP1A.190711.020 mp1k61v164bspP4 release-keys"

BUILD_FINGERPRINT := DOOGEE/S58Pro_EEA/S58Pro:10/QP1A.190711.020/1645436804:user/release-keys
