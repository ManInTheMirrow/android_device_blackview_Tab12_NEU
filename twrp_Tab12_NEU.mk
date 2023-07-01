#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit from Tab12_NEU device
$(call inherit-product, device/blackview/Tab12_NEU/device.mk)

# Inherit some common TWRP stuff
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Tab12_NEU
PRODUCT_NAME := twrp_Tab12_NEU
PRODUCT_BRAND := Blackview
PRODUCT_MODEL := Tab_12
PRODUCT_MANUFACTURER := Blackview

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Tab12_NEU \
    BUILD_PRODUCT=Tab12_NEU \
    PRODUCT_NAME=Tab12_NEU \
    PRIVATE_BUILD_DESC="Tab12_RUU-user 11 RP1A.201005.001 20220705 release-keys"

BUILD_FINGERPRINT := Blackview/Tab12_RUU/Tab12_NEU:11/RP1A.201005.001/20220705:user/release-keys
