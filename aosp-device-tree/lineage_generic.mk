#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from generic device
$(call inherit-product, device/xiaomi/generic/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := generic
PRODUCT_NAME := lineage_generic
PRODUCT_BRAND := Android
PRODUCT_MODEL := mainline
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="missi-user 15 AQ3A.250226.002 OS3.0.4.0.VLFMIXM release-keys" \
    BuildFingerprint=qti/missi/missi:15/AQ3A.250226.002/OS3.0.4.0.VLFMIXM:user/release-keys
