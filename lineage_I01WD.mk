#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/asus/I01WD/device.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := asus
PRODUCT_DEVICE := I01WD
PRODUCT_MANUFACTURER := asus
PRODUCT_MODEL := ASUS_I01WD
PRODUCT_NAME := lineage_I01WD

PRODUCT_GMS_CLIENTID_BASE := android-asus

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=ASUS_I01WD \
    PRODUCT_NAME=WW_I01WD \
    PRIVATE_BUILD_DESC="WW_Phone-user 9 PPR2.181005.003 16.1210.1906.156-0 release-keys"

BUILD_FINGERPRINT := "asus/WW_I01WD/ASUS_I01WD:9/PPR2.181005.003/16.1210.1906.156-0:user/release-keys"
