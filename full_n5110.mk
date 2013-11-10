# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file is the build configuration for a full Android
# build for n5110 hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and n5110, hence its name.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)

# Inherit from n5110 device
$(call inherit-product, device/samsung/n5110/device.mk)

ifneq ($(TARGET_BUILD_VARIANT),codefirex)

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/cfx/prebuilt/common/bootanimation/720.zip:system/media/bootanimation.zip
endif

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n5110
PRODUCT_NAME := full_n5110
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-N5110
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=konawifixx TARGET_DEVICE=konawifi BUILD_FINGERPRINT="samsung/konawifixx/konawifi:4.2.2/JDQ39/N5110XXCMG2:user/release-keys" PRIVATE_BUILD_DESC="konawifixx-user 4.2.2 JDQ39 N5110XXCMG2 release-keys"
