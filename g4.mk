#
# Copyright (C) 2016 The CyanogenMod Project
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

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi 560dpi xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := 560dpi

# Inherit proprietary blobs
$(call inherit-product-if-exists, vendor/lge/g4-common/g4-common-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

include $(LOCAL_PATH)/product/*.mk

# Google Camera
PRODUCT_PACKAGES += \
    GCam

# Glove mode
PRODUCT_PACKAGES += \
    GloveMode

# Dalvik heap
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=16m \
    dalvik.vm.heapgrowthlimit=288m \
    dalvik.vm.heapsize=768m \
    dalvik.vm.heaptargetutilization=0.85 \
    dalvik.vm.heapminfree=3m \
    dalvik.vm.heapmaxfree=12m

# Rootless torch tile workaround
PRODUCT_PACKAGES += \
    Flashlight

# Inherits fdroid
$(call inherit-product-if-exists, vendor/fdroid/fdroid-vendor.mk)
