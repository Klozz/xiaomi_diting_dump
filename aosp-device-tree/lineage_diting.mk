#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from diting device
$(call inherit-product, device/xiaomi/diting/device.mk)

PRODUCT_DEVICE := diting
PRODUCT_NAME := lineage_diting
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := diting
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="xperience_diting-user 15 AP4A.250605.005 eng.androi release-keys"

BUILD_FINGERPRINT := Xiaomi/diting/diting:12/SKQ1.230401.001/V816.0.8.0.ULFMIXM:user/release-keys
